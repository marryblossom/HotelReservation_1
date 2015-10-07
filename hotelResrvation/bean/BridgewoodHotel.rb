require_relative "Hotel"
require_relative "DetailOfRating"
class BridgewoodHotel < Hotel
  attr_accessor :detail
  def initialize
    @detail = DetailOfRating.new(4,160,110,60,50,"Bridgewood",0)
  end

  def detail
    @detail
  end

end