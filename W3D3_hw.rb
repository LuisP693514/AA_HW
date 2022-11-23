

# W3D3_hw.rb

# Exercise 1
#----------------

# Write a function sum_to(n) that uses recursion 
# to calculate the sum from 1 to n (inclusive of n).

def sum_to(n)

    return nil if n < 1
    return n if n == 1

    sum_to(n-1) + n

end

# Exercise 2
#----------------

# Write a function add_numbers(nums_array) that takes 
# in an array of Integers and returns the sum of those numbers. 
# Write this method recursively.

def add_numbers(nums_array)

    return nums_array[0] if nums_array.length <= 1

    nums_array.shift + add_numbers(nums_array)

end

# Exercise 3
#----------------

# Let's write a method that will solve Gamma Function recursively. 
# The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(n)

    return nil if n <= 0
    factorial(n-1)

end

def factorial(n)
    return 1 if n <= 1
    n * factorial(n-1)
end

# Exercise 4
#----------------

# Write a function ice_cream_shop(flavors, favorite) 
# that takes in an array of ice cream flavors available at 
# the ice cream shop, as well as the user's favorite ice cream flavor.
# Recursively find out whether or not the shop 
# offers their favorite flavor.

def ice_cream_shop(flavors, favorite)

    return false if flavors.length == 0

    flavors.shift == favorite || ice_cream_shop(flavors, favorite)

end

# Exercise 5
#----------------

# Write a function reverse(string) that takes in a string
# and returns it reversed.

def reverse(string)

    return "" if string.length == 0

    string[-1] + reverse(string[0..-2])

end

#--------------------------------------------------------------


# Test cases:

# Exercise 1
#----------------

# p sum_to(5)   # => returns 15
# p sum_to(1)   # => returns 1
# p sum_to(9)   # => returns 45
# p sum_to(-8)  # => returns nil

# Exercise 2
#----------------

# p add_numbers([1,2,3,4])    # => returns 10
# p add_numbers([3])          # => returns 3
# p add_numbers([-80,34,7])   # => returns -39
# p add_numbers([])           # => returns nil

# Exercise 3
#----------------

# p gamma_fnc(0)  # => returns nil
# p gamma_fnc(1)  # => returns 1
# p gamma_fnc(4)  # => returns 6
# p gamma_fnc(8)  # => returns 5040

# Exercise 4
#----------------

# p ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') 
# p ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') 
# p ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  
# p ice_cream_shop(['moose tracks'], 'moose tracks') 
# p ice_cream_shop([], 'honey lavender') 

# false
# true
# false
# true
# false

# Exercise 5
#----------------

# p reverse("house")  # => "esuoh"
# p reverse("dog")    # => "god"
# p reverse("atom")   # => "mota"
# p reverse("q")      # => "q"
# p reverse("id")     # => "di"
# p reverse("")       # => ""