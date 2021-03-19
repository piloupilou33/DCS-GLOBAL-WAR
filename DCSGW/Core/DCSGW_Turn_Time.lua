
--if file_exists( CONFIG_File_Mission_Running ) then
--  DSWGW_CONFIG["Turn"] = DSWGW_CONFIG["Turn"]
--end

SCHEDULER:New( nil,function ()

DSWGW_CONFIG["Turn"] = DSWGW_CONFIG["Turn"] + 1
DCSGW_Config_Save()

env.info("NEW TURN = "..DSWGW_CONFIG["Turn"] )

end, {}, 0, 10 -- #Start (number) #Repeat (number) #RandomizeFactor (number between 0 and 1 randomize repeat) #Stop (number)
) -- End Scheduler