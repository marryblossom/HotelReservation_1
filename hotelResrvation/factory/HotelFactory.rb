module HotelFactory
  def hotelAndCustomerChoose(customerType,hotel)
    if customerType.to_s.include?"Regular"
      hotelCustomer = {
          "customerType" => "Regular",
          "hotel" => hotel
      }
    else
         hotelCustomer = {
             "customerType" => "Rewards",
             "hotel" => hotel
         }
    end
    return hotelCustomer
  end
  module_function :hotelAndCustomerChoose
end