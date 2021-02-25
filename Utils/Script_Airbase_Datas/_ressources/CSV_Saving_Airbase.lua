--------------------------------------------
-- Function CSV Airbase
--------------------------------------------

-- PARAMETERS 
--------------------------------------------

TABLE_CSV_Airbase			= {}
THEATRE = env.mission.theatre

CSV_Airbase_fileName = "Airbases_Data"	
CSV_Airbase_fdir_file = "Save_"..THEATRE.."_"..CSV_Airbase_fileName ..".csv"
CSV_entetes = {}


-- FUNCTIONS 
--------------------------------------------
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


function CSV_Init_file ()
	local CSV_entetes = {"Name", "Lat", "Long", "Category", "Nb parking", "Nb Runway", "Runway 1 lenght", "Runway 2 lenght", "Runway 3 lenght", "Runway 4 lenght", "Runway 5 lenght", "Runway 6 lenght", "Runway 7 lenght", "Runway 8 lenght", "Runway 9 lenght", "Runway 10 lenght"}
	table.insert(TABLE_CSV_Airbase, CSV_entetes)
	CSVwrite(CSV_Airbase_fdir_file, TABLE_CSV_Airbase)
	
end

function SAVE_CSV_Airbase ()
	local updated_Date = os.date( "%Y-%m-%d %H-%M-%S" )
	CSVwrite(CSV_Airbase_fdir_file, TABLE_CSV_Airbase)
end

function FNC_CSV_AirbaseSet( Airbase )

	Airbase = Airbase -- Wrapper.Airbase#AIRBASE
	local CSV_Airbase_Name	 		= Airbase:GetName() 				-- return "string"
	local CSV_Airbase_Coalition		= Airbase:GetCoalitionName() 		-- return "string"
	local CSV_Airbase_Category 		= Airbase:GetCategoryName() 		-- return "string"
	local CSV_Airbase_RunwayData	= Airbase:GetRunwayData(nil,false) 	-- return #table
	local CSV_Airbase_coord			= Airbase:GetCoordinate() 			-- return #table
	local CSV_Airbase_Parking		= Airbase:GetParkingData() -- return#table
	local CSV_AirbaseNB_Parking 	= #CSV_Airbase_Parking
	local CSV_AirbaseNB_Runway 		= #CSV_Airbase_RunwayData
  
	local CSV_Airbase_lat,CSV_Airbase_long = CSV_Airbase_coord:GetLLDDM()
    
	if CSV_Airbase_Category == "Airplane" then
	
	if CSV_AirbaseNB_Runway > 0 then CSV_AirbaseRunway_1_Length	= CSV_Airbase_RunwayData[1].length	else CSV_AirbaseRunway_1_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 1 then CSV_AirbaseRunway_2_Length	= CSV_Airbase_RunwayData[2].length	else CSV_AirbaseRunway_2_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 2 then CSV_AirbaseRunway_3_Length	= CSV_Airbase_RunwayData[3].length	else CSV_AirbaseRunway_3_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 3 then CSV_AirbaseRunway_4_Length	= CSV_Airbase_RunwayData[4].length	else CSV_AirbaseRunway_4_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 4 then CSV_AirbaseRunway_5_Length	= CSV_Airbase_RunwayData[5].length	else CSV_AirbaseRunway_5_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 5 then CSV_AirbaseRunway_6_Length	= CSV_Airbase_RunwayData[6].length	else CSV_AirbaseRunway_6_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 6 then CSV_AirbaseRunway_7_Length	= CSV_Airbase_RunwayData[7].length	else CSV_AirbaseRunway_7_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 7 then CSV_AirbaseRunway_8_Length	= CSV_Airbase_RunwayData[8].length	else CSV_AirbaseRunway_8_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 8 then CSV_AirbaseRunway_9_Length	= CSV_Airbase_RunwayData[9].length	else CSV_AirbaseRunway_9_Length		= 0 	end
	if CSV_AirbaseNB_Runway > 9 then CSV_AirbaseRunway_10_Length	= CSV_Airbase_RunwayData[10].length	else CSV_AirbaseRunway_10_Length	= 0 	end
	
	table.insert(TABLE_CSV_Airbase, {	CSV_Airbase_Name,
										CSV_Airbase_lat,
										CSV_Airbase_long,
										CSV_Airbase_Category,
										CSV_AirbaseNB_Parking,
										CSV_AirbaseNB_Runway,
										math.floor(CSV_AirbaseRunway_1_Length),
										math.floor(CSV_AirbaseRunway_2_Length),
										math.floor(CSV_AirbaseRunway_3_Length),
										math.floor(CSV_AirbaseRunway_4_Length),
										math.floor(CSV_AirbaseRunway_5_Length),
										math.floor(CSV_AirbaseRunway_6_Length),
										math.floor(CSV_AirbaseRunway_7_Length),
										math.floor(CSV_AirbaseRunway_8_Length),	
										math.floor(CSV_AirbaseRunway_9_Length),
										math.floor(CSV_AirbaseRunway_10_Length)
									})
	  	  
	end

	SAVE_CSV_Airbase ()
	
  return TABLE_CSV_Airbase
  

end

-- RUN 
--------------------------------------------
CSV_Init_file ()

CSV_Airbase_Data = SET_AIRBASE:New():FilterOnce()
CSV_Airbase_Data:ForEachAirbase( FNC_CSV_AirbaseSet )

