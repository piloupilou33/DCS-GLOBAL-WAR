--=================================================================================
-- SCRIPT ATIS
--
--  Author = Kinder
--  Date = xx/xx/2021
--
--  Requirements : 
--
--=================================================================================


--[[
    N�cessit� de faire spawn une unit pour l'emission de la fr�quence allou�e
    --> FNC SPAWN GROUP
]]

-- Runs
--=================================================================================

local ATIS_Radio = DCSGW_Index_radio_ATIS

DCSGW_SET_AIRBASE_GLOBAL:ForEachAirbase(
            function ( AIRPORT )
                local AirbaseName     = AIRPORT:GetName()
                local AirbasePosition = AIRPORT:GetCoordinate()
                
                ATIS_Radio = ATIS_Radio + 0.100
                          
                local Spawn     =   SPAWN:NewWithAlias( "ATIS Relay" , "ATIS-"..AirbaseName )-- CHANGE ATIS RELAY PAR LE SPAWN GROUP ASSOCIE            
                                          :InitUnControlled( true )
                                          :InitRadioFrequency( ATIS_Radio )
                                          :SpawnFromCoordinate( AirbasePosition ) -- CHANGE POSITION NEEDED => Offset � faire
                                          
                local Unit        = Spawn:GetUnit(1)
                local UnitName    = Unit:Name()
                                
                local ATIS_Relay = ATIS:New( AirbaseName, ATIS_Radio, 0 )
                ATIS_Relay:SetRadioRelayUnitName( UnitName )
                ATIS_Relay:Start()
                
                env.info( "[[[[   INFOS SERVEUR   ]]]]    ==>  ATIS - "..AirbaseName.." - ".. ATIS_Radio .." - STARTED" )
                
            end
            )