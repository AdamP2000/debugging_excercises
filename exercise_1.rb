def say_hello(name)
  "hello #(name)"
end

 print say_hello("Adam")


#I expect the output: hello Adam

#Output I received: hello #(name)

#finding the problem: line 2 of our code

#fixing the problem: wrong interpolation syntax: #{name} instead of #(name)

#code should now run as expected
