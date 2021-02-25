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
	local CSV_entetes = {"Name","ID", "Lat", "Long", "Category", "Nb parking", "Nb Runway", "Runway 1 Lenght", "Runway 1 Heading", "Runway 2 Lenght", "Runway 2 Heading", "Runway 3 Lenght", "Runway 3 Heading", "Runway 4 Lenght", "Runway 4 Heading"}
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
	local CSV_Airbase_ID	 		= Airbase:GetID() 					-- return number
	local CSV_Airbase_Coalition		= Airbase:GetCoalitionName() 		-- return "string"
	local CSV_Airbase_Category 		= Airbase:GetCategoryName() 		-- return "string"
	local CSV_Airbase_RunwayData	= Airbase:GetRunwayData(nil,false) 	-- return #table
	local CSV_Airbase_coord			= Airbase:GetCoordinate() 			-- return #table
	local CSV_Airbase_Parking		= Airbase:GetParkingData() -- return#table
	local CSV_AirbaseNB_Parking 	= #CSV_Airbase_Parking
	local CSV_AirbaseNB_Runway 		= #CSV_Airbase_RunwayData
  
	local CSV_Airbase_lat,CSV_Airbase_long = CSV_Airbase_coord:GetLLDDM()
    
	if CSV_Airbase_Category == "Airplane" then
	
	if CSV_AirbaseNB_Runway > 0 then 
			CSV_AirbaseRunway_1_Length	= CSV_Airbase_RunwayData[1].length	
			CSV_AirbaseRunway_1_heading	= CSV_Airbase_RunwayData[1].heading	
			CSV_AirbaseRunway_2_heading	= CSV_Airbase_RunwayData[2].heading	
		else 
			CSV_AirbaseRunway_1_Length		= 0
			CSV_AirbaseRunway_1_heading		= 0
			CSV_AirbaseRunway_2_heading		= 0
	end
	if CSV_AirbaseNB_Runway > 2 then 
			CSV_AirbaseRunway_3_Length	= CSV_Airbase_RunwayData[3].length	
			CSV_AirbaseRunway_3_heading	= CSV_Airbase_RunwayData[3].heading	
			CSV_AirbaseRunway_4_heading	= CSV_Airbase_RunwayData[4].heading	
		else 
			CSV_AirbaseRunway_3_Length		= 0
			CSV_AirbaseRunway_3_heading		= 0
			CSV_AirbaseRunway_4_heading		= 0
	end
	if CSV_AirbaseNB_Runway > 4 then 
			CSV_AirbaseRunway_5_Length	= CSV_Airbase_RunwayData[5].length	
			CSV_AirbaseRunway_5_heading	= CSV_Airbase_RunwayData[5].heading	
			CSV_AirbaseRunway_6_heading	= CSV_Airbase_RunwayData[6].heading	
		else 
			CSV_AirbaseRunway_5_Length		= 0
			CSV_AirbaseRunway_5_heading		= 0
			CSV_AirbaseRunway_6_heading		= 0
	end
	if CSV_AirbaseNB_Runway > 6 then 
			CSV_AirbaseRunway_7_Length	= CSV_Airbase_RunwayData[7].length	
			CSV_AirbaseRunway_7_heading	= CSV_Airbase_RunwayData[7].heading	
			CSV_AirbaseRunway_8_heading	= CSV_Airbase_RunwayData[8].heading	
		else 
			CSV_AirbaseRunway_7_Length		= 0
			CSV_AirbaseRunway_7_heading		= 0
			CSV_AirbaseRunway_8_heading		= 0
	end
	
		
	table.insert(TABLE_CSV_Airbase, {	CSV_Airbase_Name,
										CSV_Airbase_ID,
										CSV_Airbase_lat,
										CSV_Airbase_long,
										CSV_Airbase_Category,
										CSV_AirbaseNB_Parking,
										CSV_AirbaseNB_Runway /2,
										math.floor(CSV_AirbaseRunway_1_Length),
										math.floor(CSV_AirbaseRunway_1_heading).." | "..math.floor(CSV_AirbaseRunway_2_heading),
										math.floor(CSV_AirbaseRunway_3_Length),
										math.floor(CSV_AirbaseRunway_3_heading).." | "..math.floor(CSV_AirbaseRunway_4_heading),
										math.floor(CSV_AirbaseRunway_5_Length),
										math.floor(CSV_AirbaseRunway_5_heading).." | "..math.floor(CSV_AirbaseRunway_6_heading),
										math.floor(CSV_AirbaseRunway_7_Length),
										math.floor(CSV_AirbaseRunway_7_heading).." | "..math.floor(CSV_AirbaseRunway_8_heading)
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

