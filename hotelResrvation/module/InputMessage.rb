module  InputMessage
  # attr_accessor :InputString
  # @InputString = "HHHHHHHHHHH"
  def  input
    puts "input your the date and customer type like:  Regular: 16Mar2009(mon), 17Mar2009(sun), 18Mar2009(sat)"
    # @inputString = gets.chomp
    # @InputString = "hhhhhhhhhhhh"
# # STDOUT.flush
     return gets.chomp.split(", ")
  end
  module_function :input
end