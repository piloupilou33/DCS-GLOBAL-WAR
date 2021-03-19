--=================================================================================================--
--=================================================================================================--
--
-- MENU CA MISSION DCSGW
--
--=================================================================================================--
--=================================================================================================--

-----------------------------------------------------------------------------------------------------
-- Load Moose si nécessaire en Standalone test.
--assert(loadfile( "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Core\\Moose_2.5.3.lua" ))() -- For testing only
-----------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------
-- Helps : 
--        MENU_GROUP:New(Group, MenuText, ParentMenu)
--        MENU_GROUP_COMMAND:New(Group, MenuText, ParentMenu, CommandMenuFunction, CommandMenuArgument, ...)
-----------------------------------------------------------------------------------------------------
-- External variables required : 
--        AIRBASE_BLUE_MAIN   ( from Init__Mission.lua )
-----------------------------------------------------------------------------------------------------
--
--
--=================================================================================================--
-- DEFINES
--=================================================================================================--
DCSGW_CA_Menus = {}             -- @Declaration de Table registering menus
DCSGW_CA_SCHEDULER_MODULE = {}  -- @Declaration de Table pour Affichage des Modules

contenu = " "

contenu1 = "C'est ainsi, nous allons envoyer du logitic sur zone".."\n\n".."bonne chance !"
contenu2 = "C'est ainsi, nous allons envoyer du tactic sur zone".."\n\n".."bonne chance !"


--=================================================================================================--
-- FUNCTIONS
--=================================================================================================--
  
  -- Functions
  ----------------------------------------------------
function DCSGW_FNC_Request_Logistic_vehicle ( Params )
  local WrapperGroup  = Params[1]  -- @return => Wrapper#GROUP
  local GroupName     = Params[2]  -- @return "string" => Name of group initiator
  local Module_Type   = Params[3]  -- @retunr "string" => Module type ("Logistic", "Tactic", ...)
  local FunctionType  = Params[4]  -- @return "string" => Function requested ("Request Ammo Truck", ...)
  
  DCSGW_CA_Menus[GroupName][FunctionType] = {}
  
  if FunctionType == "Request Ammo Truck" then
    FNC_Del_Previous_Menu ( GroupName, Module_Type )
    DCSGW_CA_Menus[GroupName][FunctionType][1]  = MENU_GROUP:New(WrapperGroup, " test1 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][2]  = MENU_GROUP:New(WrapperGroup, " test2 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][3]  = MENU_GROUP:New(WrapperGroup, " test3 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][4]  = MENU_GROUP:New(WrapperGroup, " test4 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][99] = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"  ,nil , Cancel, { WrapperGroup, GroupName, Module_Type, "Cancellation"   })
  elseif FunctionType == "Request Fuel Truck" then 
    FNC_Del_Previous_Menu ( GroupName, Module_Type )
    DCSGW_CA_Menus[GroupName][FunctionType][1]  = MENU_GROUP:New(WrapperGroup, " test1 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][2]  = MENU_GROUP:New(WrapperGroup, " test2 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][3]  = MENU_GROUP:New(WrapperGroup, " test3 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][4]  = MENU_GROUP:New(WrapperGroup, " test4 ", nil)
    DCSGW_CA_Menus[GroupName][FunctionType][99] = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"  ,nil , Cancel, { WrapperGroup, GroupName, Module_Type, "Cancellation"   })
  else 

  MESSAGE:New("Pas de correspondance pour la function : "..FunctionType.." \n On quitte le Module "..Module_Type ,15,"Module "):ToGroup(WrapperGroup)
  local Params = {WrapperGroup, GroupName, Module_Type, "Cancellation"}
  Cancel( Params )
  end
end   
  
function DCSGW_FNC_Request_Ammo_Truck ( Params )
-- used function from ... DCSGW_FNC_Spawn_Group(Type, nb_Units, Name, Position, units, Country, GroupCoalition)
  local WrapperGroup  = Params[1]  -- @return => Wrapper#GROUP initiator
  local GroupName     = Params[2]  -- @return "string" => Name of group initiator
  local Module_Type   = Params[3]  -- @retunr "string" => Module type ("Logistic", "Tactic", ...)
  local FunctionType  = Params[4]  -- @return "string" => Function requested ("Request Ammo Truck", ...)
  local Main_Airbase   = nil 
     
  local Type = nil 
  local Coalition      = WrapperGroup:GetCoalition()
  local CoalitionName  = WrapperGroup:GetCoalitionName()
  local ID_Spawn = nil 
  local Name = nil 
  local Position = nil
  local units = {}
  local Country = nil 
  
 ID_Spawn = DSWGW_CONFIG["ID"]["ID_Ground"]
 
 if Coalition == 1 then -- RED
  Type = "UAZ-469" -- a renseigner
  Main_Airbase = DSWGW_CONFIG["MAIN_AIRBASE_RED"]
--  ID_Spawn = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"]
--  DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"] = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_RED"] + 1
  Country = 81 -- RED
 elseif Coalition == 2 then -- BLUE
  Type = "Tigr_233036"
  Main_Airbase = DSWGW_CONFIG["MAIN_AIRBASE_BLUE"]
--  ID_Spawn = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"]
--  DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"] = DCSGW_TABLE_Ground_Accounts["ID_Group_Ground_BLUE"] + 1
  Country = 80 -- BLUE
 end
 
 Name = "HQ_"..CoalitionName.."|"..Type.."|"..ID_Spawn
 Position = AIRBASE:FindByName(Main_Airbase):GetCoordinate():GetVec2()
 units = { ["Type"] = Type, ["Name"] = Name, ["x"] =Position.x, ["y"] =Position.y, ["Heading"] = 0, ["skill"] ="Average"}
 
 DSWGW_CONFIG["ID"]["ID_Ground"] = DSWGW_CONFIG["ID"]["ID_Ground"] + 1
 
 DCSGW_FNC_Spawn_Group(Type, 1, Name, Position, units, Country, Coalition)

 MESSAGE:New("New HQ: "..Name.." created at "..Main_Airbase ,3,"HQ "..CoalitionName,true):ToGroup(WrapperGroup)

end
  
  -- Function Modules - lvl 2
  ----------------------------------------------------
function DCSGW_Module_Menu_Support_Logistic ( Params )
   local Module_Type  = "Logistic"
   local WrapperGroup = Params[1]
   local GroupName   = Params[2]
   
    -- On commence à supprimer le Menu Principal
    FNC_Test_Del_Menu_Principal ( GroupName )  
    
    -- On lance la boucle du module  
    DCSGW_CA_SCHEDULER_MODULE[GroupName] = {}
    DCSGW_CA_SCHEDULER_MODULE[GroupName][Module_Type] = SCHEDULER:New( nil, 
      function ()   
      MESSAGE:New(Module_Type.."\n\n"..contenu ,3,"Module ",true):ToGroup(WrapperGroup)
          end, {} ,0 ,1 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
    ) -- fin scheduler
    
    -- On créé le menu de Logistique
    DCSGW_CA_Menus[GroupName][Module_Type] = {}
--    DCSGW_CA_Menus[GroupName][Module_Type][1]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Ammo Truck"      ,nil , DCSGW_FNC_Request_Logistic_vehicle,          { WrapperGroup, GroupName, Module_Type, "Request Ammo Truck"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--    DCSGW_CA_Menus[GroupName][Module_Type][2]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Fuel Truck"      ,nil , DCSGW_FNC_Request_Logistic_vehicle,          { WrapperGroup, GroupName, Module_Type, "Request Fuel Truck"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--    DCSGW_CA_Menus[GroupName][Module_Type][3]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Air Tanker"      ,nil , DCSGW_FNC_Request_Logistic_vehicle,          { WrapperGroup, GroupName, Module_Type, "Request Air Tanker"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >

--    DCSGW_CA_Menus[GroupName][Module_Type][97]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Return"      ,nil , Return,            { WrapperGroup, GroupName, Module_Type, "Return"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >                        
--    DCSGW_CA_Menus[GroupName][Module_Type][98]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Validate"    ,nil , Validate,          { WrapperGroup, GroupName, Module_Type, "Validation"     }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >      
    DCSGW_CA_Menus[GroupName][Module_Type][99]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"      ,nil , Cancel,            { WrapperGroup, GroupName, Module_Type, "Cancellation"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
end

function DCSGW_Module_Menu_Support_Tactic ( Params )
--   local Module_Type  = "Tactic"
   local WrapperGroup = Params[1]
   local GroupName    = Params[2]
   local Module_Type  = Params[3]
   local FunctionType = Params[4]
   -- On commence à supprimer le Menu Principal
    FNC_Test_Del_Menu_Principal ( GroupName )  
    
    -- On lance la boucle du module  
    DCSGW_CA_SCHEDULER_MODULE[GroupName][Module_Type] = SCHEDULER:New( nil, 
      function ()   
      MESSAGE:New(Module_Type.."\n\n"..contenu ,3,"Module ",true):ToGroup(WrapperGroup)
          end, {} ,0 ,1 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
    ) -- fin scheduler
--    
--    -- On créé le menu
    DCSGW_CA_Menus[GroupName][Module_Type] = {}
--    DCSGW_CA_Menus[GroupName][Module_Type][1]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request AWACS"         ,nil , fnc_test,   { WrapperGroup, GroupName, Module_Type, "Request AWACS"         }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--    DCSGW_CA_Menus[GroupName][Module_Type][2]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Air"      ,nil , fnc_test,   { WrapperGroup, GroupName, Module_Type, "Request JTAC Air"      }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--    DCSGW_CA_Menus[GroupName][Module_Type][3]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Ground"   ,nil , fnc_test,   { WrapperGroup, GroupName, Module_Type, "Request JTAC Ground"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--
--    DCSGW_CA_Menus[GroupName][Module_Type][97]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Return"      ,nil , Return,     { WrapperGroup, GroupName, Module_Type, "Return"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >                            
--    DCSGW_CA_Menus[GroupName][Module_Type][98]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Validate"    ,nil , Validate,   { WrapperGroup, GroupName, Module_Type, "Validation"     }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >      
    DCSGW_CA_Menus[GroupName][Module_Type][99]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"      ,nil , Cancel,     { WrapperGroup, GroupName, Module_Type, "Cancellation"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >    
end

function DCSGW_Module_Menu_Groups ( Params )
   local Module_Type  = "Group Management"
   local WrapperGroup = Params[1]
   local GroupName    = Params[2]
   
end

function DCSGW_Module_Menu_JTAC ( Params )
   local Module_Type  = "JTAC"
   local WrapperGroup = Params[1]
   local GroupName   = Params[2]
   
end

function DCSGW_Module_Menu_SAM ( Params )
   local Module_Type  = "SAM"
   local WrapperGroup = Params[1]
   local GroupName   = Params[2]
   
end

function DCSGW_Module_Menu_Ground ( Params )
   local Module_Type  = "Ground Logistique"
   local WrapperGroup = Params[1]
   local GroupName   = Params[2]
   
end

function DCSGW_Module_Menu_Airbase_type ( Params )
   local Module_Type  = "Airbase type"
   local WrapperGroup = Params[1]
   local GroupName   = Params[2]
   
end

  -- Function menu principal - lvl 1
  ----------------------------------------------------
function FNC_Test_Create_Menu_Principal ( WrapperGroup , unitGroup )

     local WrapperGroup   = WrapperGroup
     local GroupName      = unitGroup
     local Module_Type    = nil
     local WapperGroupCoalition = WrapperGroup:GetCoalition()
     local Main_Airbase   = nil 
     
     if WapperGroupCoalition == 1 then 
      Main_Airbase = DSWGW_CONFIG["MAIN_AIRBASE_RED"]
      elseif WapperGroupCoalition == 2 then 
      Main_Airbase = DSWGW_CONFIG["MAIN_AIRBASE_BLUE"]
     end
     
      DCSGW_CA_SCHEDULER_MODULE[GroupName] = {}
      
      DCSGW_CA_Menus[GroupName]={}
      DCSGW_CA_Menus[GroupName]["Menu_principal"]={}
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"]={}
      
----- PRINCIPAL
---------------- 
      DCSGW_CA_Menus[GroupName]["Menu_principal"][1] = MENU_GROUP:New( WrapperGroup, "Manage Airbases" )
      DCSGW_CA_Menus[GroupName]["Menu_principal"][2] = MENU_GROUP:New( WrapperGroup, "Manage Supports" )
      DCSGW_CA_Menus[GroupName]["Menu_principal"][3] = MENU_GROUP:New( WrapperGroup, "Manage Groups" )
      DCSGW_CA_Menus[GroupName]["Menu_principal"][4] = MENU_GROUP:New( WrapperGroup, "Manage Missions" )
      
----- SECONDAIRE
----------------     
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][1] = MENU_GROUP:New( WrapperGroup, Main_Airbase,  DCSGW_CA_Menus[GroupName]["Menu_principal"][1] )
          Module_Type    = "Manage "..Main_Airbase
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][11] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request HQ Truck"     ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][1] , DCSGW_FNC_Request_Ammo_Truck,   { WrapperGroup, GroupName, Module_Type, "Request HQ Truck"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
      
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][2] = MENU_GROUP:New( WrapperGroup, "Airbases",         DCSGW_CA_Menus[GroupName]["Menu_principal"][1] )
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][3] = MENU_GROUP:New( WrapperGroup, "Logistic",         DCSGW_CA_Menus[GroupName]["Menu_principal"][2] )
          Module_Type    = "Logistic"
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][32] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Ammo Truck"     ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][3] , DCSGW_Module_Menu_Support_Logistic,   { WrapperGroup, GroupName, Module_Type, "Request Ammo Truck"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][33] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Fuel Truck"     ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][3] , DCSGW_Module_Menu_Support_Logistic,   { WrapperGroup, GroupName, Module_Type, "Request Fuel Truck"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][34] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Air Tanker"     ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][3] , DCSGW_Module_Menu_Support_Logistic,   { WrapperGroup, GroupName, Module_Type, "Request Air Tanker"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
      
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][4] = MENU_GROUP:New( WrapperGroup, "Tactic",         DCSGW_CA_Menus[GroupName]["Menu_principal"][2] )
          Module_Type    = "Tactic"
--          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][41] = {}
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][42] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request AWACS"          ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][4] , DCSGW_Module_Menu_Support_Tactic,   { WrapperGroup, GroupName, Module_Type, "Request AWACS"         }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][43] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Air"       ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][4] , DCSGW_Module_Menu_Support_Tactic,   { WrapperGroup, GroupName, Module_Type, "Request JTAC Air"      }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
          DCSGW_CA_Menus[GroupName]["Menu_secondaire"][44] = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Ground"    ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][4] , DCSGW_Module_Menu_Support_Tactic,   { WrapperGroup, GroupName, Module_Type, "Request JTAC Ground"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
--        DCSGW_CA_Menus[GroupName]["Menu_secondaire"][45] = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"                 ,DCSGW_CA_Menus[GroupName]["Menu_secondaire"][4] , Cancel,     { WrapperGroup, GroupName, Module_Type, "Cancellation"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >    
--      DCSGW_CA_Menus[groupName]["Menu_secondaire"][3] = MENU_GROUP_COMMAND:New( WrapperGroup, "Tactic",       DCSGW_CA_Menus[groupName]["Menu_principal"][2],   DCSGW_Module_Menu_Support_Tactic,     { WrapperGroup, groupName }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String >
--      DCSGW_CA_Menus[groupName]["Menu_secondaire"][4] = MENU_GROUP_COMMAND:New( WrapperGroup, "Logistic",     DCSGW_CA_Menus[groupName]["Menu_principal"][2],   DCSGW_Module_Menu_Support_Logistic,   { WrapperGroup, groupName }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String >
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][5] = MENU_GROUP:New( WrapperGroup, "Create"   , DCSGW_CA_Menus[GroupName]["Menu_principal"][3] )
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][6] = MENU_GROUP:New( WrapperGroup, "Currents missions"  , DCSGW_CA_Menus[GroupName]["Menu_principal"][4] )
      DCSGW_CA_Menus[GroupName]["Menu_secondaire"][7] = MENU_GROUP:New( WrapperGroup, "Create mission"     , DCSGW_CA_Menus[GroupName]["Menu_principal"][4] )
    
end

function FNC_Test_Del_Menu_Principal ( GroupName )
      local GroupName = GroupName
      DCSGW_CA_Menus[GroupName]["Menu_principal"][1]:Remove() 
      DCSGW_CA_Menus[GroupName]["Menu_principal"][2]:Remove()
      DCSGW_CA_Menus[GroupName]["Menu_principal"][3]:Remove()
      DCSGW_CA_Menus[GroupName]["Menu_principal"][4]:Remove()  
end

function DCSGW_General_Menu_CA ( AIRBASE_BLUE_MAIN ) -- Obsolète --> A supprimer

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

  -- Functions utils génériques pour menus
  ----------------------------------------------------
function FNC_Del_Previous_Menu ( GroupName, Module_Type )
      local GroupName = GroupName
      local Module_Type = Module_Type
        for k, v in pairs(DCSGW_CA_Menus[GroupName][Module_Type]) do
            DCSGW_CA_Menus[GroupName][Module_Type][k]:Remove()
        end  
end

function FNC_Restaur_Previous_Menu ( GroupName, Module_Type )
      local GroupName = GroupName
      local Module_Type = Module_Type
        for k, v in pairs(DCSGW_CA_Menus[GroupName][Module_Type]) do
            DCSGW_CA_Menus[GroupName][Module_Type][k]:Remove()
        end  
      
end

function Return ( Params )
  local WrapperGroup  = Params[1]
  local GroupName     = Params[2]
  local Module_Type   = Params[3]
  local FunctionType  = Params[4]
  
end 

function Cancel ( Params )
  local WrapperGroup = Params[1]
  local GroupName    = Params[2]
  local Module_Type  = Params[3]
  local FunctionType = Params[4]
  -- On stop le MSG permanent
  env.info("Value GroupName ="..GroupName)
  env.info("Value Module_Type ="..Module_Type)
--  env.info("Value Scheduler ="..DCSGW_CA_SCHEDULER_MODULE[GroupName][Module_Type])
  if DCSGW_CA_SCHEDULER_MODULE[GroupName][Module_Type] == nil then 
    env.info("Pas de valeur pour Scheduler")
  else 
    DCSGW_CA_SCHEDULER_MODULE[GroupName][Module_Type]:Stop() 
  end
  -- On valide par un message à l'utilisateur
  MESSAGE:New( FunctionType .." ".. Module_Type ,5 , "Module "):ToGroup( WrapperGroup )
  -- On supprime les menus du module concerné
  for k, v in pairs(DCSGW_CA_Menus[GroupName][Module_Type]) do
      DCSGW_CA_Menus[GroupName][Module_Type][k]:Remove()
  end
  
  -- On reinitialise le contenu du module
  contenu = " "
  
  fnc_Cleaning_Menu_LvL2 ( GroupName )
  
  -- On relance la création du Menu principal
  FNC_Test_Create_Menu_Principal ( WrapperGroup, GroupName )
end
            
function fnc_test ( Params )
  env.info("\n-> Test OK pour module "..Params[3].."\n".."-> Launch = "..Params[4])
  
  if Params[4] == "Request Ammo Truck" then 
    contenu = contenu1
  end 
  if Params[4] == "Request AWACS" then 
    contenu = contenu2
  end
  
end

function Validate ( Params )
  local WrapperGroup  = Params[1]
  local GroupName     = Params[2]
  local Module_Type   = Params[3]
  local FunctionType  = Params[4]
  
  -- ECRITURE DE PROCESS DE VALIDATION POUR TYPE DE MODULE
  
  Cancel ( Params )

end

function fnc_Cleaning_Menu_LvL2 ( GroupName )
  local GroupName = GroupName
  if DCSGW_CA_Menus[GroupName] ~= nil then
    for k, v in pairs(DCSGW_CA_Menus[GroupName]) do 
        env.info("Value : "..k.." ")
        if k == "Menu_principal" or k == "Menu_secondaire" then
            env.info("Pas de suppression de menu principaux")
        else
           for i, v in pairs(DCSGW_CA_Menus[GroupName][k]) do 
                if DCSGW_CA_Menus[GroupName][k][i] ~= nil then
                   DCSGW_CA_Menus[GroupName][k][i]:Remove() 
                   if DCSGW_CA_SCHEDULER_MODULE[GroupName][k] ~= nil then
                      DCSGW_CA_SCHEDULER_MODULE[GroupName][k]:Stop()
                      env.info("Schedule "..k.." "..i.." Stoppé")
                   end
                   env.info("Menu "..k.." "..i.." supprimé")
                end
            end
        end
     end 
  end
end

--=================================================================================================--
-- RUNNING SCRIPT
--=================================================================================================--

-----------------------------------------------------------------------------------------------------
-- EVENT PlayerEnterUnit --> Creation du menu à l'entrée dans une unité sol / Registering du menu dans la Table 
-----------------------------------------------------------------------------------------------------
  PlayerEnterUnitEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
  PlayerEnterUnitEventHandler:HandleEvent( EVENTS.PlayerEnterUnit ) 
  function PlayerEnterUnitEventHandler:OnEventPlayerEnterUnit( EventData )
    BASE:F({EventData})
    
   if EventData.initiator ~= nil then 
      local Unit          = EventData.initiator -- unit#001
      local UnitCategory  = EventData.IniCategory

      env.info("Category unit = "..UnitCategory)
      if UnitCategory == 2 then
        local unitGroup     =   Unit:getGroup():getName()
        env.info("GroupName 1 = "..unitGroup)
        local unitNumber    =   Unit:getNumber()
        local unitPlayer    =   Unit:getPlayerName()
        local GroupName     =   Unit:getGroup():getName()
        env.info("GroupName 2 = "..GroupName)
        local WrapperGroup  =   GROUP:FindByName( unitGroup )
        local unitType      =   WrapperGroup:GetUnit(unitNumber):GetTypeName()
      
        MESSAGE:New("Bienvenue "..unitPlayer..", dans votre '"..unitType.."'\n Le mode CA 'ON' ! ",10,"DCSGW Info "):ToGroup( WrapperGroup )  
        
        -- On clear le menu si nécessaire.
        fnc_Cleaning_Menu_LvL2 ( GroupName )
        -- On créé le menu principal si pas encore fait.          
        FNC_Test_Create_Menu_Principal ( WrapperGroup, unitGroup )
      end
    end
  end
-----------------------------------------------------------------------------------------------------
-- EVENT PlayerLeaveUnit --> Non utilisée 
-----------------------------------------------------------------------------------------------------
  PlayerLeaveUnitEventHandler = EVENTHANDLER:New() -- Creates the EventHandler
  PlayerLeaveUnitEventHandler:HandleEvent( EVENTS.PlayerLeaveUnit ) 
  function PlayerLeaveUnitEventHandler:OnEventPlayerLeaveUnit( EventData )
    BASE:F({EventData})

    local Unit          =   EventData.initiator -- unit#001
    local unitGroup     =   Unit:getGroup():getName()
    local unitNumber    =   Unit:getNumber()
    local unitPlayer    =   Unit:getPlayerName()

    local WrapperGroup  =   GROUP:FindByName( unitGroup )
    local unitType = WrapperGroup:GetUnit(unitNumber):GetTypeName()
  
    MESSAGE:New("Bye bye "..unitPlayer..", vous quittez votre '"..unitType.."'\n Le mode CA 'OFF' ! ",10,"DCSGW Info "):ToGroup( WrapperGroup )  
    
    --end
  end
----------------------------------------------------------------------------------------------------- 
env.info("DCSGW - INFO : DCSGW_Menu_CA.lua ==> LOADED")