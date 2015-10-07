require_relative "Hotel"
require_relative "DetailOfRating"

class RidgewoodHotel < Hotel
  attr_accessor :detail
  def initialize
    @detail  = DetailOfRating.new(5,220,100,150,40,"Ridgewood",0)
  end

  def detail
    @detail
  end
end