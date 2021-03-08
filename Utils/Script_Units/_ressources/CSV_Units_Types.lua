-- Recuperation "UNITS DATA"
--------------------------------------------

-- PARAMETERS 
--------------------------------------------

TABLE_CSV   = {}
THEATRE     = env.mission.theatre

path = lfs.currentdir()
env.info("Current path to save = "..path)

CSV_fileName    = "UnitsTypes_Datas"  
CSV_fdir_file   = path.."Save_"..THEATRE.."_"..CSV_fileName ..".csv"

CSV_entetes = { "Type", "Name", "Category DCSGW", "Category DCS Name", "Category DCS ID", "Coalition Name", "Coalition ID", "Purchase Cost", "Maintenance Cost", "Bonus Kill" }

CSV_Prefixe           = ""
CSV_Reduction_string  = ""

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
  table.insert(TABLE_CSV, CSV_entetes)
  CSVwrite(CSV_fdir_file, TABLE_CSV)  
end

function SAVE_CSV ()
  CSVwrite(CSV_fdir_file, TABLE_CSV)
end


function FNC_CSV_CREATE ( UNIT )

    local CSV_UNIT_Name               = UNIT:GetName()
    local CSV_UNIT_Type               = UNIT:GetTypeName()
    local CSV_UNIT_Category_DCSName   = UNIT:GetCategoryName()
    local CSV_UNIT_Category_DCSID     = UNIT:GetCategory()
    local CSV_UNIT_Coalition_DCSID    = UNIT:GetCoalition()
    local CSV_UNIT_Coalition_DCSNAME  = UNIT:GetCoalitionName()
    
    env.info("Registering UnitType "..CSV_UNIT_Name)
    
    
    -- { "Type", "Name", "Category DCSGW", "Category DCS Name", "Category DCS ID", "Coalition Name", "Coalition ID", "Purchase Cost", "Maintenance Cost", "Bonus Kill" }
    table.insert ( TABLE_CSV , { CSV_UNIT_Type, CSV_UNIT_Name , "Category_DCSGW", CSV_UNIT_Category_DCSName, CSV_UNIT_Category_DCSID, CSV_UNIT_Coalition_DCSNAME, CSV_UNIT_Coalition_DCSID, 0, 0, 0 })
    
    SAVE_CSV ()
    return TABLE_CSV
end 


-- RUN 
--------------------------------------------
CSV_Init_file ()

LIST_UNITS  = SET_UNIT:New():FilterStart()
LIST_UNITS:ForEachUnit( FNC_CSV_CREATE )