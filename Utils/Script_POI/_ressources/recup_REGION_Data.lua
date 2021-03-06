-- Recuperation "POI DATA"
--------------------------------------------

-- PARAMETERS 
--------------------------------------------

TABLE_CSV		= {}
THEATRE 		= env.mission.theatre

CSV_fileName 	= "REGIONS_Datas"	
CSV_fdir_file 	= "Save_"..THEATRE.."_"..CSV_fileName ..".csv"
CSV_entetes 	= {}

CSV_Prefixe		= "Region_"
CSV_Delimiter	= "_"

-- FUNCTIONS 
--------------------------------------------
function Split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

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
	local CSV_entetes = {"Name", "Name short", "Lat", "Long", "Radius", "Coalition"}
	table.insert(TABLE_CSV, CSV_entetes)
	CSVwrite(CSV_fdir_file, TABLE_CSV)
	
end

function SAVE_CSV ()
	CSVwrite(CSV_fdir_file, TABLE_CSV)
end

function FNC_CSV_ZONE ( ZONE )

		local CSV_Zone_Name			= ZONE:GetName()
		local CSV_Zone_Name_Short	= Split(CSV_Zone_Name, CSV_Delimiter)
		env.info("Registering ZoneName "..CSV_Zone_Name)
		local CSV_Zone_Radius		= ZONE:GetRadius()
		local CSV_Zone_Coordinate 	= ZONE:GetCoordinate()
		local CSV_Zone_lat,CSV_Zone_long = CSV_Zone_Coordinate:GetLLDDM()
		
			table.insert ( TABLE_CSV , { CSV_Zone_Name, CSV_Zone_Name_Short[2], CSV_Zone_lat, CSV_Zone_long, math.floor(CSV_Zone_Radius), "Neutral" })
		
		SAVE_CSV ()
		return TABLE_CSV
	end	

	
-- RUN 
--------------------------------------------
CSV_Init_file ()

LIST_FOR_CSV 	= SET_ZONE:New():FilterPrefixes(CSV_Prefixe):FilterStart()
LIST_FOR_CSV:ForEachZone( FNC_CSV_ZONE )