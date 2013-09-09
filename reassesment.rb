require 'pry'
even_numbs = []
odd_numbs  = []
# even_total = even_numbs.length
# odd_total = odd_numbs.length


def even_or_odd(number)
  number.even?
end

puts "Would you like to find out if a number is even or odd?"
@answer = gets.chomp

# puts "What is the number?"
# print ">"
# input = gets.chomp.to_i
# if even_or_odd(input) == true 
#   puts "It's even!"
# else
#   puts "It's odd!"
# end

# puts "Would you like to provide another number? (Y/N)"
# @answer = gets.chomp
# binding.pry


while true do
  if @answer == "Y" 
    puts "What is the number?"
    print ">"
    input = gets.chomp.to_i

    if even_or_odd(input) == true
      puts "It's even!"
      even_numbs << input
    else
      puts "It's odd!"
      odd_numbs << input
    end
    puts "Would you like to provide another number? (Y/N)"
    @answer = gets.chomp
  elsif @answer == "N"
    puts "Even Numbers (#{even_numbs.length} total:) #{even_numbs}"
    puts "Odd Numbers (#{odd_numbs.length} total:) #{odd_numbs}"
    break

  else
    break
  end
end


