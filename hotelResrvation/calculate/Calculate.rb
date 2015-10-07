require_relative "../bean/BridgewoodHotel"
require_relative "../bean/RidgewoodHotel"
require_relative "../bean/LakewoodHotel"
require_relative "../factory/HotelFactory"
class Calculate
  attr_accessor :lakewoodHotel, :bridgewoodHotel, :ridgewoodHotel
  def initialize
    @lakewoodHotel = LakewoodHotel.new
    @bridgewoodHotel = BridgewoodHotel.new
    @ridgewoodHotel = RidgewoodHotel.new
  end

  def calculate(input)
    lakewoodHotelAndCustomer = HotelFactory.hotelAndCustomerChoose(input[0],lakewoodHotel)
    bridgewoodHotelAndCustomer = HotelFactory.hotelAndCustomerChoose(input[0],bridgewoodHotel)
    ridgewoodHotelAndCustomer = HotelFactory.hotelAndCustomerChoose(input[0],ridgewoodHotel)
    for i in 0...input.length
      lakewoodHotel.detail.totalPrice = lakewoodHotel.detail.totalPrice + getDifferentPrice(input[i],lakewoodHotelAndCustomer)
      bridgewoodHotel.detail.totalPrice = bridgewoodHotel.detail.totalPrice + getDifferentPrice(input[i],bridgewoodHotelAndCustomer)
      ridgewoodHotel.detail.totalPrice = ridgewoodHotel.detail.totalPrice + getDifferentPrice(input[i],ridgewoodHotelAndCustomer)
    end
    puts lakewoodHotel.detail.totalPrice
    puts bridgewoodHotel.detail.totalPrice
    puts ridgewoodHotel.detail.totalPrice

    chooseTheBestOne
  end

  def getDifferentPrice(input,hotelAndCustomer)
    if input.to_s.include?"sat" or input.to_s.include?"sun"
      if hotelAndCustomer["customerType"].to_s.include?"Regular"
        return hotelAndCustomer["hotel"].detail.weekendForRegular
      else
        return hotelAndCustomer["hotel"].detail.weekendForRewards
      end
    else
      if hotelAndCustomer["customerType"].to_s.include?"Regular"
        return hotelAndCustomer["hotel"].detail.weekdayForRegular
      else
        return hotelAndCustomer["hotel"].detail.weekdayForRewards
      end
    end
  end

  def chooseTheBestOne
    if lakewoodHotel.detail.totalPrice < bridgewoodHotel.detail.totalPrice and lakewoodHotel.detail.totalPrice < ridgewoodHotel.detail.totalPrice
      return lakewoodHotel.detail.hotelName
    elsif bridgewoodHotel.detail.totalPrice < lakewoodHotel.detail.totalPrice and bridgewoodHotel.detail.totalPrice < ridgewoodHotel.detail.totalPrice
      return bridgewoodHotel.detail.hotelName
    else
      return ridgewoodHotel.detail.hotelName
    end
  end
end