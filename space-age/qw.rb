def inite(second)
  ORBITAL_PERIOD = {
    earth: 1,
    mercury: 0.2408467,
    venus: 0.61519726,   
    mars: 1.8808158,
    jupitar: 11.862615,
    Saturn: 29.447498,    
    uranus: 84.016846,
    neptune: 164.79132  
  } 
  ORBITAL_PERIOD.each do |i,j|
     puts "#{j}"
  end 
end