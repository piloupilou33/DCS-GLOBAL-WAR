
-- Load Moose
assert(loadfile( "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\Core\\Moose_2.5.3.lua" ))() -- For testing only





-- FUNCTIONS
--------------------------------------------------------------
function AddMenuToAllGroundVehicule()
     for j = 1 , 2 do
        local group_array = coalition.getGroups(j,Group.Category.GROUND)
        for k, group in ipairs(group_array) do
            if group and group:isExist()  then
                 local construction_submenu1 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 1" , nil)
                 local construction_submenu2 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 2" , nil)
                 local construction_submenu3 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 3" , nil)
                 local construction_submenu4 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 4" , nil)
                 local construction_submenu5 = missionCommands.addSubMenuForGroup(group:getID(), "Menu test 5" , nil)
                 
                 env.info("Menu créé pour le groupe : "..group:getID().. " Name : "..group:getName().." Coalition : "..group:getCoalition())
            end
        end
     end
end

AddMenuToAllGroundVehicule()