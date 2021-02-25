

--[[ FNC_RandomPointsSearch()
	parameters : 
		- [1] = COORDINATE
		- [2] = #number > distance la plus proche de recherche en mètres
		- [3] = #number > distance la plus lointaine de recherche en mètres
		- [4] = Boolean > true = sur route ou false = n'importe où
	return : 
		- [1] = Position_Found = COORDINATE
		
	examples : 
		FNC_RandomPointsSearchOnRoad ( Position, 10000, 50000, true )
		
]]
function FNC_RandomPointsSearch( Param_1, Param_2, Param_3, Param_4 )

	local Localisation 					= Param_1
	local DistanceMinChoix_parameter 	= Param_2
	local DistanceMaxChoix_parameter 	= Param_3
	local OnRoad						= Param_4

	local ClosestRoadLocalisation = Localisation:GetClosestPointToRoad()
	local DistancePlayer_ClosestRoad = math.ceil(ClosestRoadLocalisation:Get2DDistance( Localisation ))
				
		if DistancePlayer_ClosestRoad < DistanceMinChoix_parameter then 
			 DistanceMinChoix = DistanceMinChoix_parameter -- en mètres 
			 DistanceMaxChoix = DistanceMaxChoix_parameter -- en mètres  
			else 
			 DistanceMinChoix = DistancePlayer_ClosestRoad + 2000
			 DistanceMaxChoix = DistanceMaxChoix_parameter	-- en mètres				
		end

	local DistanceMin = 0
	local DistanceMax = 0
	local DistanceMin = DistanceMinChoix -- / 100
	local DistanceMax = DistanceMaxChoix -- / 100

	local Angle = 0
	local Table_points = {} 
	local Distance_point = DistanceMin
	local i = 0
	local Coordinate_depart = Localisation:NewFromCoordinate(	Localisation )

		for Distance_point = DistanceMin, DistanceMax, 10000 do 
			for Angle = 0, 360, 10 do
				New_Coordinate = Localisation:Translate(Distance_point, Angle)				
					if New_Coordinate:IsSurfaceTypeLand() then	
						i = i + 1
						Table_points[i] = New_Coordinate
						--New_Coordinate:MarkToAll( Distance_point.." "..Angle )
					end	
			end	
			local nbr_Table_points = #Table_points	
		end

--Random selection : 
	count_result_table 	= #Table_points
	Coordinate_to_use 	= Table_points [	math.random (	1	,	count_result_table)	]
	
	if OnRoad = true then 
		Position_Found = Coordinate_to_use:GetClosestPointToRoad()
	else 
		Position_Found = Coordinate_to_use
	end
	
return Position_Found

end






