def factorial(n)
  product = 1
  while n > 0
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
