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





function DCSGW_ModuleMenu_Logistic_ground (groupGround)
      
    SCHEDULER_Menu_Logisitic = SCHEDULER:New( nil, 
      function ()   
      MESSAGE:New(" Logistic Ground : "..
                  "\n\n"..
                  "ce Menu sera affiché en permanence tant que Cancel ou Validation ne sera pas pressé"..
                  "\n"..
                  "Bon vol"
            ,3,"Menu ",true):ToGroup(groupGround)
            
            function cancel (groupGround)
            DCSGW_MenuCA_lvl_2_Logistique_1:Remove()
            DCSGW_MenuCA_lvl_2_Logistique_2:Remove()
            FNC_Test_Create_Menu_Principal (groupGround)
            SCHEDULER_Menu_Logisitic:Stop()
            end
            
            function test(groupGround)
            env.info("test",true)
            end
            

          end, {},0,1 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
    )-- fin scheduler
      
            
            FNC_Test_Del_Menu_Principal ()
                        
            DCSGW_MenuCA_lvl_2_Logistique_1     = MENU_GROUP_COMMAND:New( groupGround, "test1"   ,nil , test, groupGround)
            DCSGW_MenuCA_lvl_2_Logistique_2     = MENU_GROUP_COMMAND:New( groupGround, "Cancel"   ,nil , cancel, groupGround)
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



function FNC_Test_Del_Menu_Principal ()
    DCSGW_MenuCA_lvl_1:ClearParentMenu("Manage Airbases")
    DCSGW_MenuCA_lvl_2:ClearParentMenu("Manage Supports")
    DCSGW_MenuCA_lvl_3:ClearParentMenu("Manage Groups")
    DCSGW_MenuCA_lvl_4:ClearParentMenu("Manage Missions")
end

function FNC_Test_Create_Menu_Principal (groupGround,k)

     DCSGW_MenuCA_lvl_1 = MENU_GROUP:New( groupGround, "Manage Airbases" )
     DCSGW_MenuCA_lvl_1_Main           = MENU_GROUP:New( groupGround, AIRBASE_BLUE_MAIN, DCSGW_MenuCA_lvl_1 )
     
   DCSGW_MenuCA_lvl_2 = MENU_GROUP:New( groupGround, "Manage Supports" )
--                local DCSGW_MenuCA_lvl_2_Logistique     = MENU_GROUP:New( groupGround, "Logistique" , DCSGW_MenuCA_lvl_2 )
     DCSGW_MenuCA_lvl_2_Logistique     = MENU_GROUP_COMMAND:New( groupGround, "Logistique"   ,DCSGW_MenuCA_lvl_2 , DCSGW_ModuleMenu_Logistic_ground, groupGround)
     DCSGW_MenuCA_lvl_2_Tactique       = MENU_GROUP:New( groupGround, "Tactique"   , DCSGW_MenuCA_lvl_2 )
    
   DCSGW_MenuCA_lvl_3 = MENU_GROUP:New( groupGround, "Manage Groups" )
     DCSGW_MenuCA_lvl_3_Move           = MENU_GROUP:New( groupGround, "Move"   , DCSGW_MenuCA_lvl_3 )
    
   DCSGW_MenuCA_lvl_4 = MENU_GROUP:New( groupGround, "Manage Missions" )
     DCSGW_MenuCA_lvl_4_List           = MENU_GROUP:New( groupGround, "Currents missions"  , DCSGW_MenuCA_lvl_4 )
     DCSGW_MenuCA_lvl_4_Create         = MENU_GROUP:New( groupGround, "Create mission"     , DCSGW_MenuCA_lvl_4 )
end

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
            FNC_Test_Create_Menu_Principal (groupGround,k)
--               DCSGW_MenuCA_lvl_1 = MENU_GROUP:New( groupGround, "Manage Airbases" )
--                 DCSGW_MenuCA_lvl_1_Main           = MENU_GROUP:New( groupGround, MainAirbase, DCSGW_MenuCA_lvl_1 )
--                 
--               DCSGW_MenuCA_lvl_2 = MENU_GROUP:New( groupGround, "Manage Supports" )
----               local DCSGW_MenuCA_lvl_2_Logistique     = MENU_GROUP:New( groupGround, "Logistique" , DCSGW_MenuCA_lvl_2 )
--                 DCSGW_MenuCA_lvl_2_Logistique     = MENU_GROUP_COMMAND:New( groupGround, "Logistique"   ,DCSGW_MenuCA_lvl_2 , DCSGW_ModuleMenu_Logistic_ground, groupGround)
--                 DCSGW_MenuCA_lvl_2_Tactique       = MENU_GROUP:New( groupGround, "Tactique"   , DCSGW_MenuCA_lvl_2 )
--                
--               DCSGW_MenuCA_lvl_3 = MENU_GROUP:New( groupGround, "Manage Groups" )
--                 DCSGW_MenuCA_lvl_3_Move           = MENU_GROUP:New( groupGround, "Move"   , DCSGW_MenuCA_lvl_3 )
--                
--               DCSGW_MenuCA_lvl_4 = MENU_GROUP:New( groupGround, "Manage Missions" )
--                 DCSGW_MenuCA_lvl_4_List           = MENU_GROUP:New( groupGround, "Currents missions"  , DCSGW_MenuCA_lvl_4 )
--                 DCSGW_MenuCA_lvl_4_Create         = MENU_GROUP:New( groupGround, "Create mission"     , DCSGW_MenuCA_lvl_4 )
                
              env.info("Menu créé pour le groupe : "..group:getID().. " Name : "..group:getName().." Coalition : "..group:getCoalition())
            end
        end
     end

end 


-- RUN
-----------------------------------------------------------------------------------------------------
DCSGW_General_Menu_CA ( AIRBASE_BLUE_MAIN )
















