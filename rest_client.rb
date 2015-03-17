require 'rvm'
require 'rest-client'

puts "==================================".center(70)
puts "        This is a rest client     ".center(70)
puts "==================================".center(70)
puts
printf "Please enter a query for google to search: "
input = gets.chomp

# formating the search query so it matches the parameters for google
input = input.split(" ")
input = input.join("+")

# setting the output variable to be equal to the result of the google url with the input parameters included.
output = RestClient.get "http://www.google.com/#q=#{input}"
output = output.to_str

puts 
puts " This is the output:".center(70)
puts "------------------------".center(70)
puts
puts output.center
puts 

puts "The response code is:"
puts output.code
puts

puts "the headers for the search are:"
puts output.headers
puts

puts "The cookies for the search are:"
puts output.cookies