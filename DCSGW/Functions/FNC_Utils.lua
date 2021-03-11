


function FNC_Coordinate_BULLSEYE()
  local BULLS_Coordinates = COORDINATE:NewFromVec3( coalition.getMainRefPoint( coalition.side.BLUE ) )
  local CoordStringLLDMS = BULLS_Coordinates:ToStringLLDMS( BULLS_Coordinates , 2 )
      
      local CoordString_MGRS  =   BULLS_Coordinates:ToStringMGRS( BULLS_Coordinates , 2 )
      local CoordString_LLDMS =   BULLS_Coordinates:ToStringLLDMS( BULLS_Coordinates , 2 )
      local CoordString_LLDDM =   BULLS_Coordinates:ToStringLLDDM( BULLS_Coordinates , 2 )
  
  --local BULLS_Coordinates = COORDINATE:ToStringBULLS( coalition.side.BLUE, SETTINGS.A2GSystem )
  MESSAGE:New("BULLSEYE Coordinates :\n\n #" .. CoordString_MGRS.."\n\n #"..CoordString_LLDMS.."\n\n #".. CoordString_LLDDM , 30, "Coordinates BULLS "):ToCoalition( coalition.side.BLUE )

end


function FNC_SecondsToClock( seconds )
  local seconds = tonumber(seconds)

  if seconds <= 0 then
    hours = 0 
    mins = 0 
    secs = 0
    return hours, mins, secs
  else
    hours = string.format("%02.f", math.floor(seconds/3600));
    mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
    secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
    -- return hours..":"..mins..":"..secs
  return hours, mins, secs
  end
end