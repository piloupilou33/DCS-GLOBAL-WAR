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
  
  for i,j in ipairs( GRID_SYRIA ) do
    table.insert ( TABLE_CSV , GRID_SYRIA[i] )
  end 
   CSVwrite( CSV_fdir_file, TABLE_CSV )
   
  REGISTERED_GRID_State = IntegratedserializeWithCycles("GRID_State", GRID_State)
  writemission(REGISTERED_GRID_State, fdir_file_GRID_State)  
   
  REGISTERED_GRID_Coalition_BLUE = IntegratedserializeWithCycles("GRID_Coalition_BLUE", GRID_Coalition_BLUE)
  writemission(REGISTERED_GRID_Coalition_BLUE, fdir_file_GRID_Coalition_BLUE)
  
  REGISTERED_GRID_Coalition_RED = IntegratedserializeWithCycles("GRID_Coalition_RED", GRID_Coalition_RED)
  writemission(REGISTERED_GRID_Coalition_RED, fdir_file_GRID_Coalition_RED) 
  
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
	GRID_SET_UNITS = SET_UNIT:New():FilterStart()
	
	-- Parcours du SET_UNIT
	GRID_SET_UNITS:ForEachUnit(
			function ( Unit )
				local unit_Coalition 	= Unit:GetCoalition()
				local unit_Pos_MGRS		= Unit:GetCoordinate():ToStringMGRS(1)
				local dataParse 		= Split( unit_Pos_MGRS, " ")
				local dataReturn		= nil -- initatialitation variable	
					
					-- ACCURACY MGRS
					----------------------------
					-- 	MGRS 37S BU 35787 78220
					--	  1	  2	  3	  4	    5
					-- 	MGRS 37S BU 3 7
					--	  1	  2	  3	4 5
					----------------------------
	
				dataReturn = string.format("%s %s %s", dataParse[3], dataParse[4], dataParse[5]) -- dataParse 4 et 5 non utilisés pour l'instant
				-- dataReturn = dataParse[3] .. dataParse[4] .. dataParse[5]
				
				if unit_Coalition == 1 then 
					GRID_Coalition_RED[dataParse[3]] 		= GRID_Coalition_RED[dataParse[3]] + 1 -- ajout de l'unité dans la table correspondante
				elseif unit_Coalition == 2 then
					GRID_Coalition_BLUE[dataParse[3]] 	= GRID_Coalition_BLUE[dataParse[3]] + 1 -- ajout de l'unité dans la table correspondante
				end
			
			end
	)
	-- Update de la GRID State = Launch function
	DCSGW_FNC_Update_GRID_State ()

end

function DCSGW_FNC_Update_GRID_State ()
-- STATES GRID VALUES
----------------------------------------------------- 
-- White 	= 0		[ Neutral 						]
-- Red 		= 1		[ Influence majoritaire RED 	] 
-- Blue 	= 2		[ Influence majoritaire BLUE 	]
-- Purple 	= 3		[ Front Global War			 	]
-----------------------------------------------------
	
	-- Boucle dans la GRID State pour update	
	for i,j in ipairs( GRID_State ) do
		if GRID_Coalition_BLUE[j] == GRID_Coalition_RED[j] then 
			env.info("GRID "..j.." = Même nombre de RED et BLUE")
			GRID_State[j] = 3 -- Purple
		elseif GRID_Coalition_BLUE[j] < GRID_Coalition_RED[j] then 
			env.info("GRID "..j.." = RED majoritaires")
			GRID_State[j] = 1 -- Red
		elseif GRID_Coalition_BLUE[j] > GRID_Coalition_RED[j] then 
			env.info("GRID "..j.." = BLUE majoritaires")
			GRID_State[j] = 2 -- Blue
		else 
			env.info("GRID "..j.." = Neutral")
			GRID_State[j] = 0 -- White
		end 
	end
	
end

-- RUN
-------------------------------------------------------------------------------------------
	DCSGW_FNC_Registering_Tables_GRID_SYRIA_MAP () -- inititalisation du registre des tables GRID
   
  DCSGW_FNC_Save_GRID_Status ()
   
-- END
-------------------------------------------------------------------------------------------