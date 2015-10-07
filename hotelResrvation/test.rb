class HotleReservation
attr_accessor :Lakewood, :Bridgewood, :Ridgewood, :hotelRate, :LakewoodPrice, :BridgewoodPrice, :RidgewoodPrice
# def initialize
Lakewood = {
    "rating" => 3,
    "weekdayForRegular" =>  110,
    "weekdayForRewards" => 80,
    "weekendForReguar" => 90,
    "weekendForRewards" => 80
}

Bridgewood = {
    "rating" => 4,
    "weekdayForRegular" =>  160,
    "weekdayForRewards" => 110,
    "weekendForReguar" => 60,
    "weekendForRewards" => 50
}

Ridgewood = {
    "rating" => 5,
    "weekdayForRegular" =>  220,
    "weekdayForRewards" => 100,
    "weekendForReguar" => 150,
    "weekendForRewards" => 40
}
hotelRate = {
    "Lakewood" => Lakewood,
    "Bridgewood" => Bridgewood,
    "Ridgewood" => Ridgewood
}

LakewoodPrice = 0
BridgewoodPrice = 0
RidgewoodPrice = 0
puts "input your the date and customer type like:  Regular: 16Mar2009(mon), 17Mar2009(sun), 18Mar2009(sat)"
# STDOUT.flush
DateOfReserve = gets.chomp.split(", ")
puts DateOfReserve[0]
if DateOfReserve[0].to_s.include?"Regular"
  for i in 0..DateOfReserve.length-1
    if DateOfReserve[i].to_s.include?"sat"
      LakewoodPrice +=  hotelRate["Lakewood"]["weekendForReguar"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekendForReguar"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekendForReguar"]
    elsif DateOfReserve[i].to_s.include?"sun"
      LakewoodPrice +=  hotelRate["Lakewood"]["weekendForReguar"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekendForReguar"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekendForReguar"]
    else
      LakewoodPrice += hotelRate["Lakewood"]["weekdayForRegular"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekdayForRegular"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekdayForRegular"]
    end
  end
else
  for i in 0..DateOfReserve.length-1
    if DateOfReserve[i].to_s.include?"sat"
      LakewoodPrice +=  hotelRate["Lakewood"]["weekendForRewards"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekendForRewards"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekendForRewards"]
    elsif DateOfReserve[i].to_s.include?"sun"
      LakewoodPrice +=  hotelRate["Lakewood"]["weekendForRewards"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekendForRewards"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekendForRewards"]
    else
      LakewoodPrice +=  hotelRate["Lakewood"]["weekdayForRegular"]
      BridgewoodPrice += hotelRate["Bridgewood"]["weekdayForRewards"]
      RidgewoodPrice += hotelRate["Ridgewood"]["weekdayForRewards"]
    end
  end
end

if LakewoodPrice < BridgewoodPrice && LakewoodPrice < RidgewoodPrice
  puts "Lakewood"
elsif BridgewoodPrice < LakewoodPrice && BridgewoodPrice < RidgewoodPrice
  puts "Bridgewood"
else
  puts "Ridgewood"
end
# puts LakewoodPrice
# puts BridgewoodPrice
# puts RidgewoodPrice
end

