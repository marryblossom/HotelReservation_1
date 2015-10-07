require_relative "DetailOfRating"
class Hotel
  attr_accessor :detailOfRating, :totalPrice
  def initialize(detailOfRating)
    @detailOfRating = detailOfRating
    @totalPrice = 0
  end

  def totalPrice= (value)
    @totalPrice = value
  end
  def totalPrice
    @totalPrice
  end

end
