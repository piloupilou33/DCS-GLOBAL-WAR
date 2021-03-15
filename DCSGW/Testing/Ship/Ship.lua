TABLE_CSV   = {}
THEATRE     = env.mission.theatre

path = "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Testing\\Ship\\"
env.info("Current path to save = "..path)

CSV_fileName    = "Ship_Datas"  
CSV_fdir_file   = path.."Save_"..THEATRE.."_"..CSV_fileName ..".csv"

CSV_entetes = {"Name", "Type", "Coalition ID", "Coalition Name", "Country", "Position X", "Position Y" , "Heading", "Lat", "Long" }

CSV_Prefixe           = ""
CSV_Reduction_string  = ""


function CSV_Init_file ()
  table.insert(TABLE_CSV, CSV_entetes)
  CSVwrite(CSV_fdir_file, TABLE_CSV)  
end

function FNC_CSV_CREATE ( group_ship )

    local CSV_UNIT_Name               = group_ship:GetName()
    local CSV_UNIT_Type               = group_ship:GetTypeName()
    
    local CSV_UNIT_Category_DCSName   = group_ship:GetCategoryName()
    local CSV_UNIT_Category_DCSID     = group_ship:GetCategory()
    
    local CSV_UNIT_Coalition_DCSNAME  = group_ship:GetCoalitionName()
    local CSV_UNIT_Coalition_DCSID    = group_ship:GetCoalition()
    
    local CSV_UNIT_Country_DCSNAME    = group_ship:GetCountryName()
    local CSV_UNIT_Country_DCSID      = group_ship:GetCountry()
    
    local CSV_UNIT_Heading            = group_ship:GetHeading()
    local CSV_UNIT_Position           = group_ship:GetVec2()
    
    local CSV_UNIT_Coordinates        = group_ship:GetCoordinate()
    local CSV_Unit_lat,CSV_Unit_long = CSV_UNIT_Coordinates:GetLLDDM()
    
    env.info("Registering Ship "..CSV_UNIT_Name)
    
    
    -- { "Type", "Name", "Category DCSGW", "Category DCS Name", "Category DCS ID", "Coalition Name", "Coalition ID", "Country Name", "Country ID", "Purchase Cost", "Maintenance Cost", "Bonus Kill" }
    table.insert ( TABLE_CSV , { CSV_UNIT_Name, CSV_UNIT_Type, CSV_UNIT_Coalition_DCSID, CSV_UNIT_Coalition_DCSNAME, CSV_UNIT_Country_DCSNAME, CSV_UNIT_Position.x, CSV_UNIT_Position.y, CSV_UNIT_Heading, CSV_Unit_lat, CSV_Unit_long  })
    
    SAVE_CSV ()
    return TABLE_CSV
end 

function SAVE_CSV ()
  CSVwrite(CSV_fdir_file, TABLE_CSV)
end

-- RUN 
--------------------------------------------
CSV_Init_file ()

LIST_SHIP  = SET_GROUP:New():FilterCategories("ship"):FilterStart()
LIST_SHIP:ForEachGroup( FNC_CSV_CREATE )
