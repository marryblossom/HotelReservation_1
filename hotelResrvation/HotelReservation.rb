require_relative "module/InputMessage"
require_relative "calculate/Calculate"
class ShowOutResult
  attr_accessor :inputString
  def initialize
    @inputString = InputMessage.input
  end

  def getTheBestHotel
    cal = Calculate.new
    puts cal.calculate(inputString)
  end
end

result = ShowOutResult.new
result.getTheBestHotel

