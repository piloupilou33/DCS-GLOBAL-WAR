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
DCSGW_CA_Menus = {}             -- Declaration de Table registering menus
DCSGW_CA_SCHEDULER_MODULE = {}  -- Declaration de Table pour Affichage des Modules

contenu = " "

contenu1 = "C'est ainsi, nous allons envoyer du logitic sur zone".."\n\n".."bonne chance !"
contenu2 = "C'est ainsi, nous allons envoyer du tactic sur zone".."\n\n".."bonne chance !"


--=================================================================================================--
-- FUNCTIONS
--=================================================================================================--
function DCSGW_Module_Menu_Support_Logistic ( Params )
   local Module_Type  = "Logistic"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   
    -- On commence à supprimer le Menu Principal
    FNC_Test_Del_Menu_Principal ( GroupeName )  
    
    -- On lance la boucle du module  
    DCSGW_CA_SCHEDULER_MODULE[GroupeName] = {}
    DCSGW_CA_SCHEDULER_MODULE[GroupeName][Module_Type] = SCHEDULER:New( nil, 
      function ()   
      MESSAGE:New(Module_Type..
                  "\n\n"..contenu
                  ,3,"Module ",true):ToGroup(WrapperGroup)

          end, {} ,0 ,1 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
    ) -- fin scheduler
    
    -- On créé le menu de Logistique
    DCSGW_CA_Menus[GroupeName][Module_Type] = {}
    DCSGW_CA_Menus[GroupeName][Module_Type][1]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Ammo Truck"      ,nil , fnc_test,          { WrapperGroup, GroupeName, Module_Type, "Request Ammo Truck"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
    DCSGW_CA_Menus[GroupeName][Module_Type][2]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Fuel Truck"      ,nil , fnc_test,          { WrapperGroup, GroupeName, Module_Type, "Request Fuel Truck"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
    DCSGW_CA_Menus[GroupeName][Module_Type][3]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request Air Tanker"      ,nil , fnc_test,          { WrapperGroup, GroupeName, Module_Type, "Request Air Tanker"    }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
                            
--    DCSGW_CA_Menus[GroupeName][Module_Type][98]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Validate"    ,nil , Validate,          { WrapperGroup, GroupeName, Module_Type, "Validation"     }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >      
    DCSGW_CA_Menus[GroupeName][Module_Type][99]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"      ,nil , Cancel,            { WrapperGroup, GroupeName, Module_Type, "Cancellation"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
end

function DCSGW_Module_Menu_Support_Tactic ( Params )
   local Module_Type  = "Tactic"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   -- On commence à supprimer le Menu Principal
    FNC_Test_Del_Menu_Principal ( GroupeName )  
    
    -- On lance la boucle du module  
    DCSGW_CA_SCHEDULER_MODULE[GroupeName] = {}
    DCSGW_CA_SCHEDULER_MODULE[GroupeName][Module_Type] = SCHEDULER:New( nil, 
      function ()   
      MESSAGE:New(Module_Type..
                  "\n\n"..contenu
                  ,3,"Module ",true):ToGroup(WrapperGroup)

          end, {} ,0 ,1 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
    ) -- fin scheduler
    
    -- On créé le menu de Logistique
    DCSGW_CA_Menus[GroupeName][Module_Type] = {}
    DCSGW_CA_Menus[GroupeName][Module_Type][1]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request AWACS"         ,nil , fnc_test,   { WrapperGroup, GroupeName, Module_Type, "Request AWACS"         }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
    DCSGW_CA_Menus[GroupeName][Module_Type][2]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Air"      ,nil , fnc_test,   { WrapperGroup, GroupeName, Module_Type, "Request JTAC Air"      }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
    DCSGW_CA_Menus[GroupeName][Module_Type][3]      = MENU_GROUP_COMMAND:New( WrapperGroup, "Request JTAC Ground"   ,nil , fnc_test,   { WrapperGroup, GroupeName, Module_Type, "Request JTAC Ground"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >
                            
--    DCSGW_CA_Menus[GroupeName][Module_Type][98]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Validate"    ,nil , Validate,   { WrapperGroup, GroupeName, Module_Type, "Validation"     }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >      
    DCSGW_CA_Menus[GroupeName][Module_Type][99]     = MENU_GROUP_COMMAND:New( WrapperGroup, "Cancel"      ,nil , Cancel,     { WrapperGroup, GroupeName, Module_Type, "Cancellation"   }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String | Params[3] = Name of module #String | Params[4] = Name of function #String >    
end

function DCSGW_Module_Menu_JTAC ( Params )
   local Module_Type  = "JTAC"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   
end

function DCSGW_Module_Menu_SAM ( Params )
   local Module_Type  = "SAM"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   
end

function DCSGW_Module_Menu_Ground ( Params )
   local Module_Type  = "Ground Logistique"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   
end

function DCSGW_Module_Menu_Airbase_type ( Params )
   local Module_Type  = "Airbase type"
   local WrapperGroup = Params[1]
   local GroupeName   = Params[2]
   
end


  -- Function menu principal
  ----------------------------------------------------
function FNC_Test_Create_Menu_Principal ( WrapperGroup , unitGroup )

     local WrapperGroup   = WrapperGroup
     local groupName      = unitGroup
     
      DCSGW_CA_Menus[unitGroup]={}
      DCSGW_CA_Menus[unitGroup]["Menu_principal"]={}
      DCSGW_CA_Menus[unitGroup]["Menu_secondaire"]={}
     
      DCSGW_CA_Menus[groupName]["Menu_principal"][1] = MENU_GROUP:New( WrapperGroup, "Manage Airbases" )
      DCSGW_CA_Menus[groupName]["Menu_principal"][2] = MENU_GROUP:New( WrapperGroup, "Manage Supports" )
      DCSGW_CA_Menus[groupName]["Menu_principal"][3] = MENU_GROUP:New( WrapperGroup, "Manage Groups" )
      DCSGW_CA_Menus[groupName]["Menu_principal"][4] = MENU_GROUP:New( WrapperGroup, "Manage Missions" )
     
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][1] = MENU_GROUP:New( WrapperGroup, AIRBASE_BLUE_MAIN,  DCSGW_CA_Menus[groupName]["Menu_principal"][1] )
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][2] = MENU_GROUP:New( WrapperGroup, "Airbases",         DCSGW_CA_Menus[groupName]["Menu_principal"][1] )
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][3] = MENU_GROUP_COMMAND:New( WrapperGroup, "Tactic",       DCSGW_CA_Menus[groupName]["Menu_principal"][2],   DCSGW_Module_Menu_Support_Tactic,     { WrapperGroup, groupName }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String >
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][4] = MENU_GROUP_COMMAND:New( WrapperGroup, "Logistic",     DCSGW_CA_Menus[groupName]["Menu_principal"][2],   DCSGW_Module_Menu_Support_Logistic,   { WrapperGroup, groupName }) -- < Params[1] = Wapper#Group | Params[2] = Group Name #String >
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][5] = MENU_GROUP:New( WrapperGroup, "Move"   , DCSGW_CA_Menus[groupName]["Menu_principal"][3] )
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][6] = MENU_GROUP:New( WrapperGroup, "Currents missions"  , DCSGW_CA_Menus[groupName]["Menu_principal"][4] )
      DCSGW_CA_Menus[groupName]["Menu_secondaire"][7] = MENU_GROUP:New( WrapperGroup, "Create mission"     , DCSGW_CA_Menus[groupName]["Menu_principal"][4] )
    
end

function FNC_Test_Del_Menu_Principal ( groupName )
      local GroupName = groupName
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
function Cancel ( Params )
  local WrapperGroup = Params[1]
  local GroupeName   = Params[2]
  local Module_Type  = Params[3]
  local FunctionType = Params[4]
  -- On stop le MSG permanent
  DCSGW_CA_SCHEDULER_MODULE[GroupeName][Module_Type]:Stop()  
  -- On valide par un message à l'utilisateur
  MESSAGE:New( FunctionType .." ".. Module_Type ,5 , "Module "):ToGroup( WrapperGroup )
  -- On supprime les menus du module concerné
  for k, v in pairs(DCSGW_CA_Menus[GroupeName][Module_Type]) do
      DCSGW_CA_Menus[GroupeName][Module_Type][k]:Remove()
  end
  
  -- On reinitialise le contenu du module
  contenu = ""
  
  -- On relance la création du Menu principal
  FNC_Test_Create_Menu_Principal ( WrapperGroup, GroupeName )
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
  local WrapperGroup = Params[1]
  local GroupeName   = Params[2]
  local Module_Type  = Params[3]
  local FunctionType = Params[4]
  
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
--      if Unit.Category.GROUND_UNIT then
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
  function PlayerLeaveUnitEventHandler:OnEventPlayerEnterUnit( EventData )
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














