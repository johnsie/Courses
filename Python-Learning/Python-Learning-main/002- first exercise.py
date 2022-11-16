# -*- coding: utf-8 -*-
"""
Created on Mon Jul 25 10:55:15 2022

@author: john.mccourt
"""

#My answers to  "Exercise: Syntax, Variables, and Numbers" exercise from Kaggle.com

#1. Create a line of code which  can be run
print("Hello, world")


#2. Create a second line of code
print("Hello, world")
print("Second line of code")


#3. What is your favuorite color? *

#To complete this question, create a variable called color with an appropriate value. 

#I initially entered as my favourite colour but they deciced they would prefer it to be blue
#color = "green"
color = "blue"


#####################

#4. Complete the code below. 

pi = 3.14159 # approximate
diameter = 3

# Create a variable called 'radius' equal to half the diameter
radius = (diameter/2)


# Create a variable called 'area', using the formula for the area of a circle: pi times the radius squared
area = (pi*(radius*radius))

#Alternatively I could have done:
    
area = pi * radius ** 2

#This is because the ** raises radius by the power of 2 
#and exponential calculations come before multiplications in the order of operations
    


###################
#5. Add code to swap variables a and b (so that a refers to the object previously referred to by b and vice versa).


########### Setup code - don't touch this part ######################
# If you're curious, these are examples of lists. We'll talk about 
# them in depth a few lessons from now. For now, just know that they're
# yet another type of Python object, like int or float.
a = [1, 2, 3]
b = [3, 2, 1]
q2.store_original_ids()
######################################################################

# Your code goes here. Swap the values to which a and b refer.
# If you get stuck, you can always uncomment one or both of the lines in
# the next cell for a hint, or to peek at the solution.
temp= a
a = b
b = temp



######################################################################

#I solved this by creating a temporary variable call temp which would hold the value of 'a'
#This meant that I could overwrite the value of 'a' by assigning it with the value of 'b',
#but would still have a copy of what was orignally in 'a'
#I then assigned the temporarily stored value (the original from 'a') to 'b'

#A one-line alternative way to do this:
    a, b = b, a


##############################

#6. Add brackets to the following to make it evaulate to 1
#5 - 3 // 2

(5-3) // 2

###################################

#7. Add parentheses to the following expression so that it evaluates to 0.
#8 - 3 * 2 - 1 + 1
8 - 3 * 2 - (1 + 1)

#Put putting the brackets turns it to
8 - 3 * 2 - 2

#So that's

8 - 6  -2

#Which is really just

8-8

#And 8-8 leaves nothing


#####################################
#8.  Alice, Bob and Carol have agreed to pool their Halloween candy and split it evenly among themselves. For the sake of their friendship, any candies left over will be smashed. For example, if they collectively bring home 91 candies, they'll take 30 each and smash 1.

#Write an arithmetic expression below to calculate how many candies they must smash for a given haul.

# Variables representing the number of candies collected by alice, bob, and carol
alice_candies = 121
bob_candies = 77
carol_candies = 109

# Your code goes here! Replace the right-hand side of this assignment with an expression
# involving alice_candies, bob_candies, and carol_candies

total = alice_candies + bob_candies + carol_candies
to_smash = total % 3


#To solve this I calculated the total number of 'candies'  and assigned it to a new variable called total
# I then used the modulus operator to get the integer remainder after dividing by 3 (because there were three children)













