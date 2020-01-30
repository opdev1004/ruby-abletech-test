##
# Programming Problem
# For the numbers 1 to 100, print a string for each number as per the following rules:
# 1. If the number is divisible by 3, print ‘Fizz’
# 2. If the number is divisible by 5, print ‘Buzz’
# 3. If the number is divisible by 3 and 5, print ‘FizzBuzz’
# 4. If the number is not divisible by 3 or 5, print the number
#
# Run solution.rb by
# ===============
# ruby solution.rb
# ===============

# Loop through 1 to 100 for the solution
for x in 1..100 do
  # Get leftovers after divisions by 3 and 5
  threeLeft = x % 3
  fiveLeft = x % 5
  ##
  # There are more cases that are not divisible by 3 or 5 or 15.
  # So check for that case first. And print the number.
  if threeLeft != 0 && fiveLeft != 0
    puts(x)
  ##
  # There are more cases that are divisible by 3 than 5 or 15.
  # So check that condition first. And print 'Fizz'
  elsif threeLeft == 0 && fiveLeft != 0
    puts("Fizz")
  # If the number is divisible by 5, print 'Buzz'
  elsif threeLeft != 0 && fiveLeft == 0
    puts("Buzz")
  # The least case that number is divisible by 3 x 5 = 15.
  # So this is placed at the end. And print 'FizzBuzz'
  else
    puts("FizzBuzz")
  end
end
