def factorial(n)
  product = 1
  while n > 1
    n -= 1
    product *= n
  end
  product
end

puts factorial(5)

# Intended output:
#
# > factorial(5)
# => 120


#Getting the output 0 and this is because of line 3 of our code. When n becomes 1 in line 4 it subtracts 1 from that and multiplies it by product so we always end up with 0.
#We need to change the 0 to a 1 in line 3 to solve this problem
