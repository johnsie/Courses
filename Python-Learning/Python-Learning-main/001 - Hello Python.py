
#The class hello world output
print ("hello, world")


#Variable assignment
#No need to declare the variable before assigning it a value
#Don't need to tell it what the variable type is eg. int etc.

spam_amount = 0

#Function calls. Example of calling the print functions and passing a value to it
print(spam_amount)

#Commenting. Google already told me that comments in python could be done with #



#Assigning a new value to an existing
spam_amount = spam_amount + 4


#A simple if statement. The colon at the end of the if line indicated a code block is starting
#Instead of using curly braces to encapsulate  the if statement we use whitespaces
#This encourages good formatting in code and makes it more readable

if spam_amount > 0:
    print("But I don't want any spam!")


viking_song = "Spam " * spam_amount

#Multiplying the string by a number seems to repeat the string that number of times
#This  is different from other languages where you wouldn't expect to be able to
#multiply a string by an integer
print(viking_song)

###########################


#Numbers and arithmetic


##########################
spam_amount = 0 

#Output the variable type for spam_amount
type(spam_amount)
#The type function told me that the value was an int


#Float
type(20.22)



#a + b 	Addition 	Sum of a and b
#a - b 	Subtraction 	Difference of a and b
#a * b 	Multiplication 	Product of a and b
#a / b 	True division 	Quotient of a and b
#a // b 	Floor division 	Quotient of a and b, removing fractional parts
#a % b 	Modulus 	Integer remainder after division of a by b
#a ** b 	Exponentiation 	a raised to the power of b
#-a 	Negation 	The negative of a

#The difference between the two division types is that / is standard division #
#and // gives a result that's rounded down to the nearest integer

#On the other hand using / for division will always return a float. Eg 3.0

#Order of operation is stadndard bmdas

#Brackets can be used to help control the order of operations


hat_height_cm = 25
my_height_cm = 190
total_height_meters = (hat_height_cm + my_height_cm) / 100
print("Height in meters =", total_height_meters)





#Built in functions for working with numbers

print(min(1, 2, 3))
print(max(1, 2, 3))

#Returns
#1
#3



#absolute value of an argument
print(abs(32))
print(abs(-32))

#Returns
#32
#32



#Int and float can be called as functions to covert the types
print(float(10))
print(int(3.33))
#Also on strings
print(int('807') + 1)

#Returns 10.0
#3
#808














 





