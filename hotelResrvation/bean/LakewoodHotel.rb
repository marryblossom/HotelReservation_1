#继承Hotel的所有属性  对属性初始化 并定义不同计算rate的方法
require_relative "Hotel"
require_relative "DetailOfRating"
class LakewoodHotel < Hotel
  attr_accessor :detail
  def initialize
    @detail  = DetailOfRating.new(3,110,80,90,80,"Lakewood",0)
  end

  def detail
    @detail
  end
end






