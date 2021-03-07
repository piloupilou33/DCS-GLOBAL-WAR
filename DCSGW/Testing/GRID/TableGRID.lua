-------------------------------------------------------------------------------------------
-- A supprimer
function CSVwrite(path, data, sep)
    sep = sep or ','
    local file,err = assert(io.open(path, "w"))
  if err then return err end
    for i=1,#data do
        for j=1,#data[i] do
            if j>1 then file:write(sep) end
            file:write(data[i][j])
        end
        file:write('\n')
    end
    file:close()
end

function IntegratedbasicSerialize(s)
    if s == nil then
      return "\"\""
    else
      if ((type(s) == 'number') or (type(s) == 'boolean') or (type(s) == 'function') or (type(s) == 'table') or (type(s) == 'userdata') ) then
        return tostring(s)
      elseif type(s) == 'string' then
        return string.format('%q', s)
      end
    end
  end

function IntegratedserializeWithCycles(name, value, saved)
    local basicSerialize = function (o)
      if type(o) == "number" then
        return tostring(o)
      elseif type(o) == "boolean" then
        return tostring(o)
      else -- assume it is a string
        return IntegratedbasicSerialize(o)
      end
    end

    local t_str = {}
    saved = saved or {}       -- initial value
    if ((type(value) == 'string') or (type(value) == 'number') or (type(value) == 'table') or (type(value) == 'boolean')) then
      table.insert(t_str, name .. " = ")
      if type(value) == "number" or type(value) == "string" or type(value) == "boolean" then
        table.insert(t_str, basicSerialize(value) ..  "\n")
      else

        if saved[value] then    -- value already saved?
          table.insert(t_str, saved[value] .. "\n")
        else
          saved[value] = name   -- save name for next time
          table.insert(t_str, "{}\n")
          for k,v in pairs(value) do      -- save its fields
            local fieldname = string.format("%s[%s]", name, basicSerialize(k))
            table.insert(t_str, IntegratedserializeWithCycles(fieldname, v, saved))
          end
        end
      end
      return table.concat(t_str)
    else
      return ""
    end
  end

function file_exists(name) --check if the file already exists for writing
    if lfs.attributes(name) then
    return true
    else
    return false end 
end

function writemission(data, file)--Function for saving to file (commonly found)
  File = io.open(file, "w")
  File:write(data)
  File:close()
end




-------------------------------------------------------------------------------------------

-- Functions UTILS
-------------------------------------------------------------------------------------------

function Split(str,sep)
if sep == nil then
    words = {}
    for word in str:gmatch("%w+") do table.insert(words, word) end
    return words
end
	return {str:match((str:gsub("[^"..sep.."]*"..sep, "([^"..sep.."]*)"..sep)))} -- BUG!! doesnt return last value
end





-- function Split(s, delimiter)
    -- result = {};
    -- for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        -- table.insert(result, match);
    -- end
    -- return result;
-- end

-- DEFINES
-------------------------------------------------------------------------------------------
TABLE_CSV   = {}
THEATRE     = env.mission.theatre

--path_scripts = "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Testing\\GRID\\" -- Path testing only

-- Load Moose
assert(loadfile( "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Core\\Moose_2.5.3.lua" ))() -- For testing only

CSV_fileName    = "GRID_Datas"  
CSV_fdir_file   = path_scripts.."Saves\\Save_"..THEATRE.."_"..CSV_fileName ..".csv"
CSV_entetes     = {}

fdir_file_GRID_State   = path_scripts.."Saves\\Save_"..THEATRE.."_GRID_State.lua"
fdir_file_GRID_Coalition_BLUE = path_scripts.."Saves\\Save_"..THEATRE.."_GRID_Coalition_BLUE.lua"
fdir_file_GRID_Coalition_RED = path_scripts.."Saves\\Save_"..THEATRE.."_GRID_Coalition_RED.lua"
-- TABLES
-------------------------------------------------------------------------------------------
function DCSGW_FNC_Registering_Tables_GRID_SYRIA_MAP ()

GRID_SYRIA              = { {"XG" , "YG" , "BB" , "CB", "DB", "EB"},
                            {"XF" , "YF" , "BA" , "CA", "DA", "EA"},
                            {"XE" , "YE" , "BV" , "CV", "DV", "EV"},
                            {"XD" , "YD" , "BU" , "CU", "DU", "EU"},
                            {"XC" , "YC" , "BT" , "CT", "DT", "ET"},
                            {"XB" , "YB" , "BS" , "CS", "DS", "ES"},
                            {"XA" , "YA" , "BR" , "CR", "DR", "ER"},				
                        }
				
GRID_State              = { ["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
                            ["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
                            ["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
                            ["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
                            ["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
                            ["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
                            ["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
                        }

GRID_Coalition_BLUE     = { ["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
                            ["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
                            ["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
                            ["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
                            ["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
                            ["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
                            ["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
                        }

GRID_Weight_BLUE        = { ["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
                            ["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
                            ["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
                            ["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
                            ["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
                            ["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
                            ["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
                        }						

GRID_Coalition_RED      = { ["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
                            ["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
                            ["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
                            ["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
                            ["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
                            ["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
                            ["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
                        }	

GRID_Weight_RED         = { ["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
                            ["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
                            ["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
                            ["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
                            ["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
                            ["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
                            ["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
                       }
							
end						
			
function DCSGW_FNC_Registering_Tables_GRID_CAUCASUS_MAP ()

end

function DCSGW_FNC_Registering_Tables_GRID_GULF_MAP ()

end


-- Functions SCRIPT
-------------------------------------------------------------------------------------------
function DCSGW_FNC_Load_GRID_Status ()

end

function DCSGW_FNC_Save_GRID_Status ()
   
  REGISTERED_GRID_State = IntegratedserializeWithCycles("GRID_State", GRID_State)
  writemission(REGISTERED_GRID_State, fdir_file_GRID_State)  
   
  REGISTERED_GRID_Coalition_BLUE = IntegratedserializeWithCycles("GRID_Coalition_BLUE", GRID_Coalition_BLUE)
  writemission(REGISTERED_GRID_Coalition_BLUE, fdir_file_GRID_Coalition_BLUE)
  
  REGISTERED_GRID_Coalition_RED = IntegratedserializeWithCycles("GRID_Coalition_RED", GRID_Coalition_RED)
  writemission(REGISTERED_GRID_Coalition_RED, fdir_file_GRID_Coalition_RED) 
  
end

function DCSGW_FNC_CSV_ArcgisMap ()

end

function DCSGW_FNC_Check_GRID_Status ( GRID_NB )

	local States	=	{}
	local grid		= GRID_NB
	local Lign 		= nil 
	local Col		= nil
	local table_temp = {}
	
	for Lign = 1 , #GRID_SYRIA do 
		for Col = 1 , #GRID_SYRIA[Lign] do 
			if GRID_SYRIA[Lign][Col] == GRID_NB then
				state_N 	= GRID_SYRIA[Lign-1][Col]
				state_NE	= GRID_SYRIA[Lign-1][Col+1]	
				state_E		= GRID_SYRIA[Lign][Col+1]
				state_SE	= GRID_SYRIA[Lign+1][Col+1]
				state_S		= GRID_SYRIA[Lign+1][Col]
				state_SW	= GRID_SYRIA[Lign+1][Col-1]
				state_W		= GRID_SYRIA[Lign][Col-1]
				state_NW	= GRID_SYRIA[Lign-1][Col-1]
				table_temp 	= { state_N, state_NE, state_E, state_SE, state_S, state_SW, state_W, state_NW }
				
				for i = 1, #table_temp do
					if table_temp[i] ~= nil then 		
						table.insert (States, GRID_State[table_temp[i]])
					end				
				end				
			end
		end
	end
	
	return States
	
end 

function DCSGW_FNC_Detection_GRID_units ()
	
	-- Creation du SET_UNIT
	GRID_SET_UNITS = SET_UNIT:New():FilterOnce()
	
	-- Remise � Z�ro de la table
  local Lign  = nil 
  local Col   = nil	
  
	for Lign = 1 , #GRID_SYRIA do 
    for Col = 1 , #GRID_SYRIA[Lign] do
          local value_Grid = GRID_SYRIA[Lign][Col]
          GRID_Coalition_RED[value_Grid]   = 0
          GRID_Coalition_BLUE[value_Grid]  = 0
    end
  end
	
	-- Parcours du SET_UNIT
	GRID_SET_UNITS:ForEachUnit(
			function ( Unit )
				local unit_Coalition 	= Unit:GetCoalition()
				local unit_Pos_MGRS   = Unit:GetCoordinate()
				local dataReturn		  = nil -- initatialitation variable	
        local value = 0
        local MGRS_Value = nil

        -- MGRS Translation
    	  local lat, lon = coord.LOtoLL( unit_Pos_MGRS:GetVec3() )
        local MGRS = coord.LLtoMGRS( lat, lon )    
    	      
        local Easting=tostring(MGRS.Easting)
        local Northing=tostring(MGRS.Northing)
        
        local nE=5-string.len(Easting) 
        local nN=5-string.len(Northing)

        for i=1,nE do Easting="0"..Easting end
        for i=1,nN do Northing="0"..Northing end
	       
		    dataReturn = string.format("%s%s%s", MGRS.MGRSDigraph, string.sub(Easting, 1, 1), string.sub(Northing, 1, 1))
				MGRS_Value = tostring(MGRS.MGRSDigraph)
				
	     -- Prise de value des Tables GRID par Coalition
				if unit_Coalition == 1 then 

          value = GRID_Coalition_RED[MGRS_Value]
					GRID_Coalition_RED[MGRS_Value]     = value + 1 -- ajout de l'unité dans la table correspondante

				elseif unit_Coalition == 2 then

					value = GRID_Coalition_BLUE[MGRS_Value]
					GRID_Coalition_BLUE[MGRS_Value]  = value + 1 -- ajout de l'unité dans la table correspondante
					
				end
				
				env.info("Unit : "..Unit:GetTypeName().." | Coalition : "..unit_Coalition.." | Position : "..dataReturn.." | GRID : "..MGRS.MGRSDigraph.." | Value = "..value )
			
			end
	)
	
	REGISTERED_GRID_State = IntegratedserializeWithCycles("GRID_State", GRID_State)
  writemission(REGISTERED_GRID_State, fdir_file_GRID_State)  
	-- Update de la GRID State = Launch function
	DCSGW_FNC_Update_GRID_State ()

--DCSGW_FNC_Check_GRID_Status ( dataReturn )

end

function DCSGW_FNC_Update_GRID_State ()
-----------------------------------------------------
-- STATES GRID VALUES
----------------------------------------------------- 
-- White 	= 0		[ Neutral 						]
-- Red 		= 1		[ Influence majoritaire RED 	] 
-- Blue 	= 2		[ Influence majoritaire BLUE 	]
-- Purple 	= 3		[ Front Global War			 	]
-----------------------------------------------------
	  local Lign  = nil 
    local Col   = nil 
    
    for Lign = 1 , #GRID_SYRIA do 
      for Col = 1 , #GRID_SYRIA[Lign] do
        local value_Grid = GRID_SYRIA[Lign][Col]
            
        if GRID_Coalition_BLUE[value_Grid] == GRID_Coalition_RED[value_Grid] then 
          env.info("GRID "..value_Grid.." = Même nombre de RED et BLUE")
          GRID_State[value_Grid] = 3 -- Purple
        elseif GRID_Coalition_BLUE[value_Grid] < GRID_Coalition_RED[value_Grid] then 
          env.info("GRID "..value_Grid.." = RED majoritaires")
          GRID_State[value_Grid] = 1 -- Red
        elseif GRID_Coalition_BLUE[value_Grid] > GRID_Coalition_RED[value_Grid] then 
          env.info("GRID "..value_Grid.." = BLUE majoritaires")
          GRID_State[value_Grid] = 2 -- Blue
        else 
          env.info("GRID "..value_Grid.." = Neutral")
          GRID_State[value_Grid] = 0 -- White
        end
      end 
    end

	
	
	-- Boucle dans la GRID State pour update	
--	for i,j in ipairs( GRID_State ) do
--	   env.info("Test J = "..j.."Test I = "..i)
--	   
--		if GRID_Coalition_BLUE[j] == GRID_Coalition_RED[j] then 
--			env.info("GRID "..j.." = Même nombre de RED et BLUE")
--			GRID_State[j] = 3 -- Purple
--		elseif GRID_Coalition_BLUE[j] < GRID_Coalition_RED[j] then 
--			env.info("GRID "..j.." = RED majoritaires")
--			GRID_State[j] = 1 -- Red
--		elseif GRID_Coalition_BLUE[j] > GRID_Coalition_RED[j] then 
--			env.info("GRID "..j.." = BLUE majoritaires")
--			GRID_State[j] = 2 -- Blue
--		else 
--			env.info("GRID "..j.." = Neutral")
--			GRID_State[j] = 0 -- White
--		end 
--		
--	end
	
--	DCSGW_FNC_Save_GRID_Status ()
	
end

-- RUN
-------------------------------------------------------------------------------------------
	DCSGW_FNC_Registering_Tables_GRID_SYRIA_MAP () -- inititalisation du registre des tables GRID
   
  for i,j in ipairs( GRID_SYRIA ) do
    table.insert ( TABLE_CSV , GRID_SYRIA[i] )
  end 
  CSVwrite( CSV_fdir_file, TABLE_CSV ) 
  
  SCHEDULER_GRID_Status = SCHEDULER:New( nil,
    function ()
        DCSGW_FNC_Detection_GRID_units ()
--        DCSGW_FNC_Save_GRID_Status ()
    end
   , {}, 1, 20 ) 
 
  
-- END
-------------------------------------------------------------------------------------------