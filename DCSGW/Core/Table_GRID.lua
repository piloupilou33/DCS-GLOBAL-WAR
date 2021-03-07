


GRID_SYRIA = { 	{"XG" , "YG" , "BB" , "CB", "DB", "EB"},
				{"XF" , "YF" , "BA" , "CA", "DA", "EA"},
				{"XE" , "YE" , "BV" , "CV", "DV", "EV"},
				{"XD" , "YD" , "BU" , "CU", "DU", "EU"},
				{"XC" , "YC" , "BT" , "CT", "DT", "ET"},
				{"XB" , "YB" , "BS" , "CS", "DS", "ES"},
				{"XA" , "YA" , "BR" , "CR", "DR", "ER"},				
			}
			
GRID_State = { 	["XG"] = 0 ,["YG"] = 0 ,["BB"] = 0 ,["CB"] = 0 ,["DB"] = 0 ,["EB"] = 0 ,
				["XF"] = 0 ,["YF"] = 0 ,["BA"] = 0 ,["CA"] = 0 ,["DA"] = 0 ,["EA"] = 0 ,
				["XE"] = 0 ,["YE"] = 0 ,["BV"] = 0 ,["CV"] = 0 ,["DV"] = 0 ,["EV"] = 0 ,
				["XD"] = 0 ,["YD"] = 0 ,["BU"] = 0 ,["CU"] = 0 ,["DU"] = 0 ,["EU"] = 0 ,
				["XC"] = 0 ,["YC"] = 0 ,["BT"] = 0 ,["CT"] = 0 ,["DT"] = 0 ,["ET"] = 0 ,
				["XB"] = 0 ,["YB"] = 0 ,["BS"] = 0 ,["CS"] = 0 ,["DS"] = 0 ,["ES"] = 0 ,
				["XA"] = 0 ,["YA"] = 0 ,["BR"] = 0 ,["CR"] = 0 ,["DR"] = 0 ,["ER"] = 0 ,
			}
			
			
			

function DCSGW_FNC_Load_Grid_Status ()

end

function DCSGW_FNC_Save_Grid_Status ()

end

function DCSGW_FNC_Check_Grid_Status ( GRID_NB )

	local States	=	{}
	local grid		= GRID_NB
	local Lign 		= nil 
	local Col		= nil
	local table_temp = {}
	
	for Lign = 1 , #GRID_SYRIA do 
		for Col = 1 , #GRID_SYRIA[Lign] do 
			if GRID_SYRIA[Lign][Col] == GRID_NB then
				state_N 	= GRID_SYRIA[Lign-1][Col]
				state_NE	= GRID_SYRIA[Lign-1][Col+1]	
				state_E		= GRID_SYRIA[Lign][Col+1]
				state_SE	= GRID_SYRIA[Lign+1][Col+1]
				state_S		= GRID_SYRIA[Lign+1][Col]
				state_SW	= GRID_SYRIA[Lign+1][Col-1]
				state_W		= GRID_SYRIA[Lign][Col-1]
				state_NW	= GRID_SYRIA[Lign-1][Col-1]
				table_temp 	= { state_N, state_NE, state_E, state_SE, state_S, state_SW, state_W, state_NW }
				
				for i = 1, #table_temp do
					if table_temp[i] ~= nil then 		
						table.insert (States, GRID_State[table_temp[i]])
					end				
				end				
			end
		end
	end
	
	return States
	
end 





