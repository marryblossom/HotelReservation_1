class DetailOfRating
  attr_accessor :rating, :weekdayForRegular, :weekendForRewards, :weekendForRegular, :weekdayForRewards, :hotelName, :totalPrice
  def initialize(rating,weekdayForRegular,weekdayForRewards,weekendForRegular,weekendForRewards,hotelName, totalPrice)
    @rating = rating
    @weekdayForRegular = weekdayForRegular
    @weekdayForRewards = weekdayForRewards
    @weekendForRegular = weekendForRegular
    @weekendForRewards = weekendForRewards
    @hotelName = hotelName
    @totalPrice = totalPrice
  end
end