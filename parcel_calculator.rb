require './lib/parcels'

def main_menu
  puts 'Enter height, width, length, and weight in that order separated by commas'
  user_input = gets.chomp
  user_input = user_input.split(",")
  user_input = user_input.map! do |x|
    x = x.to_i
  end
  @new_parcel = Parcel.new(user_input[0], user_input[1], user_input[2], user_input[3])
  puts "Your cost to ship is: $#{@new_parcel.cost_to_ship}"
end

main_menu
