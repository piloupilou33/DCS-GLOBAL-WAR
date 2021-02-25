-- Recuperation "Airbase DATA"
--------------------------------------------
fichier_sauvegarde 	= "Airbases_Datas.lua"

TABLE_AIRBASE = {}

LIST_AIRBASES 	= SET_AIRBASE:New():FilterOnce()

LIST_AIRBASES:ForEachAirbase(
            function ( AIRBASE )
					local AirbaseName 			= AIRBASE:GetName()
					local AirbaseID				= AIRBASE:GetID()
					local AirbaseCategory 		= AIRBASE:GetCategory()
					local AirbaseCategoryname	= AIRBASE:GetCategoryName() 
					local AirbasePosition 		= AIRBASE:GetCoordinate()
					local AirbaseParking		= AIRBASE:GetParkingData() -- return#table
					local AirbaseRunwaydata		= AIRBASE:GetRunwayData(nil,false) -- return#table
					
					local AirbaseNB_Parking 		= #AirbaseParking
					local AirbaseNB_Runway 		= #AirbaseRunwaydata
					
					if AirbaseCategoryname ==	"Airplane" then 
												
						for i=1, #AirbaseRunwaydata do
							local AirbaseRunwayHeading	= AirbaseRunwaydata[i].heading
							local AirbaseRunwayLength	= AirbaseRunwaydata[i].length
						end
						
					end
				
			table.insert ( TABLE_AIRBASE , { 	["Airbase Name"] 			= AirbaseName, 
												["Airbase ID"] 				= AirbaseID, 
												["Airbase Category"] 		= AirbaseCategory,
												["Airbase Category Name"] 	= AirbaseCategoryname, 
												["Airbase Parking number"] 	= AirbaseNB_Parking,
												["Airbase Runway number"] 	= AirbaseNB_Runway,
												["Airbase Position"]		= {},
												["Airbase Position"]["X"]	= AirbasePosition.x,
												["Airbase Position"]["Y"]	= AirbasePosition.y,
												["Airbase Position"]["Z"]	= AirbasePosition.z,
											})
			
			
			
			table.save(	TABLE_AIRBASE	, fichier_sauvegarde )
					
			end
		)