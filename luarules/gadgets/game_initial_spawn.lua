
function gadget:GetInfo()
    return {
        name      = 'Initial Spawn',
        desc      = 'Handles initial spawning of units',
        author    = 'Niobium',
        version   = 'v1.0',
        date      = 'April 2011',
        license   = 'GNU GPL, v2 or later',
        layer     = 0,
        enabled   = true
    }
end

-- 31/03/13, mo_coop_II deals with the extra startpoints etc needed for teamsIDs with more than one playerID.

----------------------------------------------------------------
-- Synced only
----------------------------------------------------------------
if not gadgetHandler:IsSyncedCode() then
    return false
end

----------------------------------------------------------------
-- Config
----------------------------------------------------------------
local changeStartUnitRegex = '^\138(%d+)$'
local startUnitParamName = 'startUnit'

----------------------------------------------------------------
-- Var
----------------------------------------------------------------
local armcomDefID = UnitDefNames.armcom.id
local corcomDefID = UnitDefNames.corcom.id
local tllcomDefID = UnitDefNames.tllcom.id

local validStartUnits = {
    [armcomDefID] = true,
    [corcomDefID] = true,
    [tllcomDefID] = true,

}
local spawnTeams = {} -- spawnTeams[teamID] = allyID

local modOptions = Spring.GetModOptions() or {}
local comStorage = false
if ((modOptions.mo_storageowner) and (modOptions.mo_storageowner == "com")) then
  comStorage = true
end
local startMetal  = tonumber(modOptions.startmetal)  or 1000
local startEnergy = tonumber(modOptions.startenergy) or 1000

local StartPointTable = {}
local StartPointAssist 

-- guessing vars
local claimradius = 250*2.3 -- the radius about your own startpoint which the startpoint guesser regards as containing mexes that you've claimed for yourself (dgun range=250)
local claimheight = 300 -- the height difference relative your own startpoint in which, within the claimradius, the startpoint guesser regards you as claiming mexes (coms can build up a cliff ~200 high but not much more).

----------------------------------------------------------------
-- Speedups
----------------------------------------------------------------
local spGetPlayerInfo = Spring.GetPlayerInfo
local spGetTeamInfo = Spring.GetTeamInfo
local spGetTeamRulesParam = Spring.GetTeamRulesParam
local spSetTeamRulesParam = Spring.SetTeamRulesParam
local spGetTeamStartPosition = Spring.GetTeamStartPosition
local spGetAllyTeamStartBox = Spring.GetAllyTeamStartBox
local spCreateUnit = Spring.CreateUnit
local spGetGroundHeight = Spring.GetGroundHeight

----------------------------------------------------------------
-- Initialize
----------------------------------------------------------------
function gadget:Initialize()
    local gaiaTeamID = Spring.GetGaiaTeamID()
    local teamList = Spring.GetTeamList()
    for i = 1, #teamList do
        local teamID = teamList[i]
        if teamID ~= gaiaTeamID then
            local _, _, _, _, teamSide, teamAllyID = spGetTeamInfo(teamID)
            if teamSide == 'core' then
                spSetTeamRulesParam(teamID, startUnitParamName, corcomDefID)
            elseif teamSide == 'arm' then
                spSetTeamRulesParam(teamID, startUnitParamName, armcomDefID)
	    else
                spSetTeamRulesParam(teamID, startUnitParamName, tllcomDefID)
            end
            spawnTeams[teamID] = teamAllyID
        end
    end
end

-- keep track of choosing faction ingame
if tonumber((Spring.GetModOptions() or {}).mo_allowfactionchange) == 1 then
    function gadget:RecvLuaMsg(msg, playerID)
        local startUnit = tonumber(msg:match(changeStartUnitRegex))
        if startUnit and validStartUnits[startUnit] then
            local _, _, playerIsSpec, playerTeam = spGetPlayerInfo(playerID)
            if not playerIsSpec then
                spSetTeamRulesParam(playerTeam, startUnitParamName, startUnit, public) --public so as advplayerlist can check faction at GameStart
                return true
            end
        end
    end
end

if (tonumber((Spring.GetModOptions() or {}).mo_startpoint_assist) == 1) and (Game.startPosType == 2) then
	 StartPointAssist = true
else
	StartPointAssist = false
end

----------------------------------------------------------------
-- Spawning
----------------------------------------------------------------

-- prevent startpoints being placed outside or on the edge of the startbox, as a workaround for http://springrts.com/mantis/view.php?id=3737
function gadget:AllowStartPosition(x,y,z,playerID)
	--Spring.Echo(x,y,z)
	--yh = Spring.GetGroundHeight(x,z)
	--Spring.Echo(x,yh,z)
	--if StartPointAssist == false then return true end
	local _,_,_,_,allyteamID,_,_,_,_,_ = Spring.GetPlayerInfo(playerID)
	if allyteamID == nil then return true end
	local xmin, zmin, xmax, zmax = spGetAllyTeamStartBox(allyteamID)
	if xmin>=xmax or zmin>=zmax then return true end
	local isoutsidestartbox = (xmin+1 >= x) or (x >= xmax-1) or (zmin+1 >= z) or (z >= zmax-1) -- the engine round the placing of startpoints to integers but does not round the startbox (wtf)
	if isoutsidestartbox then 
		return false
	else
		return true
	end
	
	return true
end--

--[[ 
	Construct a table to tell us which startpoints have actually been placed.
	This is very hacky because the engine does not have the appropriate callins (see http://springrts.com/mantis/view.php?id=3665).
	At GameStart it seems all playerIDs "without" a startpoint have had a startpoint placed by the engine.
	When the engine auto-places startpoints it puts them mostly at (xmin,-500,zmin) but in odd situations it puts them elsewhere too, as of 01/04/13.
]]--
local function MakeStartPointTable()
	local GaiateamID = Spring.GetGaiaTeamID()
	local allyTeamIDs = Spring.GetAllyTeamList()
	for j=1,#allyTeamIDs do
		local teamIDs = Spring.GetTeamList(allyTeamIDs[j])
		local xmin, zmin, xmax, zmax = spGetAllyTeamStartBox(allyTeamIDs[j]) 
		for i=1,#teamIDs do
			local x,y,z = Spring.GetTeamStartPosition(teamIDs[i])
			local my = Spring.GetGroundHeight(x,z)
			local isygood = ((y > -500) and (y + 50 > my)) --if the player/AI doesn't make a startpoint, the engine places one for the player/AI. AIs get y=-500 and players get y=-100. this check fails in sea >50 deep.
			local _,_,_,isAIteam,_,_,_,_ = Spring.GetTeamInfo(teamIDs[i]) 
			local isGaiateam = (teamIDs[i] == GaiateamID)
			
			playerIDs = Spring.GetPlayerList(teamIDs[i])
			local isactive = true
			local isspec = false
			if #playerIDs ~= 0 then
				if playerIDs[1] ~= nil then
					_,isactive,isspec,_,_,_,_,_,_,_ = Spring.GetPlayerInfo(playerIDs[1])
				end
			end
			
			local isplayerspot = true
			if xmin and xmax then
				local isLeft = (xmin >= x) 
				local isTop = (zmin >= z) 
				isplayerspot = (not isLeft) or (not isTop) 
			end
			--Spring.Echo(teamIDs[i],x,z,y,my,isygood,isplayerspot,not isAIteam,not isspec,isactive)--DEBUG
			
			if not isGaiateam then
				if (isygood and ((not isAIteam) or isplayerspot) and (not isspec)) then --guess! engine has no callin that can check 
					StartPointTable[teamIDs[i]]={x,z} --we believe this startpoint is genuine!
				else	
					StartPointTable[teamIDs[i]]={-3*claimradius,-3*claimradius} --far enough out the way to not interfere with guessing routines of other teamIDs
				end
			end			
		end
	end
	return StartPointTable
end

-- spawn starting unit
local function SpawnTeamStartUnit(teamID, allyID, x, z)
	local startUnit = spGetTeamRulesParam(teamID, startUnitParamName)
	local xmin, zmin, xmax, zmax = spGetAllyTeamStartBox(allyID) 

	if (StartPointAssist) then 
		-- guess points for the classified in StartPointTable as not genuine 
		if (StartPointTable[teamID][1] < 0) then
			x,z=GuessStartSpot(teamID, allyID, xmin, zmin, xmax, zmax)
		end
	else
		--old start point placement
		if (x<=0) or (z<=0) then
			x = (xmin + xmax) / 2
			z = (zmin + zmax) / 2
		end
	end

	local unitID = spCreateUnit(startUnit, x, spGetGroundHeight(x, z), z, 0, teamID) 
	
	if (comStorage) then
	  Spring.AddUnitResource(unitID, 'm', startMetal)
	  Spring.AddUnitResource(unitID, 'e', startEnergy)
	end
end

-- cycle through teams and call spawn starting unit
function gadget:GameStart() 
	if StartPointAssist then 
		StartPointTable = MakeStartPointTable() 
	end
	for teamID, allyID in pairs(spawnTeams) do
		local startX, _, startZ = Spring.GetTeamStartPosition(teamID)
		SpawnTeamStartUnit(teamID, allyID, startX, startZ) 
	end
end

----------------------------------------------------------------
--- Guessing Routine ------
----------------------------------------------------------------
function GuessStartSpot(teamID, allyID, xmin, zmin, xmax, zmax)
	--Sanity check
	if (xmin >= xmax) or (zmin>=zmax) then return 0,0 end 
	
	-- Try our guesses
	local x,z = GuessOne(teamID, allyID, xmin, zmin, xmax, zmax)
	if x>=0 and z>=0 then
		StartPointTable[teamID]={x,z} 
		return x,z 
	else
		x,z = GuessTwo(teamID, allyID, xmin, zmin, xmax, zmax)
		if x>=0 and z>=0 then 
				StartPointTable[teamID]={x,z} 
			return x,z 
		end
	end
	

	-- GIVE UP, fuuuuuuuuuuuuu --
	x = (xmin + xmax) / 2
	z = (zmin + zmax) / 2
	StartPointTable[teamID]={x,z} 
	return x,z
end

-- guess based on metal spots --
function GuessOne(teamID, allyID, xmin, zmin, xmax, zmax) 	

	-- Note: This code is deliberately easy to read and not optimized in its logic since there is no pressure on its runtime.
	-- It's also got magic number style guesswork in it.

	-- check if mex list generation worked and retrieve if so
	if not GG.metalSpots then
		return -1,-1
	end
	local metalspots = GG.metalSpots
	if metalspots == false then 
		return -1,-1 
	end

	-- find free metal spots
	local freemetalspots = {} -- will contain all metalspots that are within teamIDs startbox and are not within one of the cylinders given by (claimradius,claimheight) about an already existing startpoint
	local k,j = 1,1
	for i=1,#metalspots do 
		local spot = metalspots[i]
		local mx,mz = spot.x,spot.z
		local my = Spring.GetGroundHeight(mx,mz)
		local iswithinstartbox = (xmin < mx) and (mx < xmax) and (zmin < mz) and (mz < zmax)
		
		local isfree = true
		for _,startpoint in pairs(StartPointTable) do -- we avoid enemy startpoints too, to prevent unnecessary explosions and to deal with the case of having no startboxes
			local sx,sz = startpoint[1],startpoint[2]
			local sy = Spring.GetGroundHeight(sx,sz)
			local iswithinclaimradius = ((sx-mx)*(sx-mx)+(sz-mz)*(sz-mz) <= (claimradius)*(claimradius))
			local iswithinclaimheight = (math.abs(my-sy) <= claimheight)
			if iswithinclaimradius and iswithinclaimheight then 
				isfree = false 
				break
			end
		end		
		
		if isfree and iswithinstartbox then
			freemetalspots[k] = {mx,mz}
			k = k + 1		
		end
	end

	if k==1 then --found no free metal spots
		return -1,-1
	end
		
	-- score each free metal spot
	local freemetalspotscores = {}
	for i=1,#freemetalspots do freemetalspotscores[i]=0 end 	
	
	for i=1,#freemetalspots do
		local ix,iz = freemetalspots[i][1], freemetalspots[i][2]
		for j=1,i-1 do
			if ix ~= jz and iz ~= jz then
				local jx,jz = freemetalspots[j][1],freemetalspots[j][2]
				local score = 1/(((math.abs(ix-jx))^2+(math.abs(iz-jz))^2)^(2/3)) -- Magic formula. Assumes all metal spots are of equal production value, TODO...
				freemetalspotscores[i] = freemetalspotscores[i] + score
			end
		end
	end
	
	-- find free metal spot with highest score
	local bestindex = 1
	for i=2,#freemetalspotscores do
		if freemetalspotscores[i] >= freemetalspotscores[bestindex] then
			bestindex = i
		end	
	end
	
	-- find nearest free spot closest to best 
	local bx,bz = freemetalspots[bestindex][1],freemetalspots[bestindex][2]
	local nx,nz 
	local bestdistance = (xmax)*(xmax)+(zmax)*(zmax) -- meh, just need to be big

	for i=1,#freemetalspots do
		if i ~= bestindex then
			local mx,mz = freemetalspots[i][1],freemetalspots[i][2]
			local thisdistance = (bx-mx)*(bx-mx)+(bz-mz)*(bz-mz) --no need to squareroot, we care only about the order 
			if thisdistance < bestdistance then
				bestdistance = thisdistance
				nx = mx
				nz = mz
			end
		end
	end
	
	-- if it wasn't possible to find a nearest free spot, or some error caused us to find ourselves, start on the mex
	if nx==nil or nx==bx or nz==nil or nz==bz then 
		nx=bx+1
		nz=bx+1
	end
			
	-- move slightly towards nearest from best 
	local norm = math.sqrt((bx-nx)*(bx-nx)+(bz-nz)*(bz-nz))
	local dispx = (nx-bx)/norm
	local dispz = (nz-bz)/norm
	local disp = 120
	x = bx + disp * (dispx)
	z = bz + disp * (dispz)
	
	return x,z
end

function GuessTwo(teamID, allyID, xmin, zmin, xmax, zmax)
	return -1,-1 --TODO: cycle through map startpoints looking for one that isn't close to an already placed startpoint
end

