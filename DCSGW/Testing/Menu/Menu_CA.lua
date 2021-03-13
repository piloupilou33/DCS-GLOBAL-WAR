--=================================================================================
--=================================================================================
--
-- MENU MISSION DCSGW
--
--=================================================================================
--=================================================================================




-----------------------------------------------------------------------------------------------------
-- Load Moose
--assert(loadfile( "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Core\\Moose_2.5.3.lua" ))() -- For testing only
-----------------------------------------------------------------------------------------------------


-- FUNCTIONS
-----------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------
-- Function DCSGW_General_Menu_CA ()
--
-- MENU_GROUP:New(Group, MenuText, ParentMenu)
-- MENU_GROUP_COMMAND:New(Group, MenuText, ParentMenu, CommandMenuFunction, CommandMenuArgument, ...)
-----------------------------------------------------------------------------------------------------
-- External variables required : 
--        AIRBASE_BLUE_MAIN   ( from Init__Mission.lua )
-----------------------------------------------------------------------------------------------------
function DCSGW_General_Menu_CA ( AIRBASE_BLUE_MAIN )

  local MainAirbase = "Main :"..AIRBASE_BLUE_MAIN

  for j = 1 , 2 do
        local group_array = coalition.getGroups(j, Group.Category.GROUND)
        for k, group in ipairs(group_array) do
            if group and group:isExist()  then
            
            local groupGround = GROUP:Find(group) -- Define the wrapper#GROUP
            
--  local construction_submenu1 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 1" , nil)
--  local construction_submenu2 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 2" , nil)
--  local construction_submenu3 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 3" , nil)
--  local construction_submenu4 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 4" , nil)
--  local construction_submenu5 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 5" , nil)
            
              local DCSGW_MenuCA_lvl_1 = MENU_GROUP:New( groupGround, "Manage Airbases" )
                local DCSGW_MenuCA_lvl_1_Main           = MENU_GROUP:New( groupGround, MainAirbase, DCSGW_MenuCA_lvl_1 )
                 
              local DCSGW_MenuCA_lvl_2 = MENU_GROUP:New( groupGround, "Manage Supports" )
                local DCSGW_MenuCA_lvl_2_Logistique     = MENU_GROUP:New( groupGround, "Logistique" , DCSGW_MenuCA_lvl_2 )
                local DCSGW_MenuCA_lvl_2_Tactique       = MENU_GROUP:New( groupGround, "Tactique"   , DCSGW_MenuCA_lvl_2 )
                
              local DCSGW_MenuCA_lvl_3 = MENU_GROUP:New( groupGround, "Manage Groups" )
                local DCSGW_MenuCA_lvl_3_Move           = MENU_GROUP:New( groupGround, "Move"   , DCSGW_MenuCA_lvl_3 )
                
              local DCSGW_MenuCA_lvl_4 = MENU_GROUP:New( groupGround, "Manage Missions" )
                local DCSGW_MenuCA_lvl_4_List           = MENU_GROUP:New( groupGround, "Currents missions"  , DCSGW_MenuCA_lvl_4 )
                local DCSGW_MenuCA_lvl_4_Create         = MENU_GROUP:New( groupGround, "Create mission"     , DCSGW_MenuCA_lvl_4 )
                
              env.info("Menu créé pour le groupe : "..group:getID().. " Name : "..group:getName().." Coalition : "..group:getCoalition())
            end
        end
     end

end 


function DCSGW_ModuleMenu_Logistic_ground ()

end

function DCSGW_ModuleMenu_Logistic_air ()

end

function DCSGW_ModuleMenu_JTAC ()

end

function DCSGW_ModuleMenu_SAM ()

end

function DCSGW_ModuleMenu_Ground ()

end

function DCSGW_ModuleMenu_Airbase_type ()

end





-- RUN
-----------------------------------------------------------------------------------------------------
DCSGW_General_Menu_CA ( AIRBASE_BLUE_MAIN )
















