
#Set the working directory
setwd("D:/R/csv input")

#Read the csv into a variable
data <- read.csv("input.csv")


#Is the data a dataframe?


print(is.data.frame(data))
#The answer was yes, because when you read a csv into a variable it loads it into a dataframe


#Print the number of rows and columns in the file
print(nrow(data))
print(ncol(data))


#Print the maximum value that is in the salary column

sal <- max(data$salary)
print(sal)


#Get the person who has the maximum salary

#This is like an sql where
retval <- subset(data, salary == max(salary))
print(retval)


#A more complicated query
#Get the people in the IT department who have a salary greater than 600
#This would be similar to a select * where (salary >600) and (dept = "IT")

info <- subset(data, salary > 600 & dept == "IT")
#Returns the two IT members who match that salary

print(info)


#Get the people who joined on or after 2014

#dates should be refactored to date
latejoiners <- subset(data, as.Date(start_date)> as.Date("2014-01-01"))

print (latejoiners)




#Output the result to a different csv file
write.csv(latejoiners, "output.csv", row.names = FALSE)


newdata <- read.csv("output.csv")
print(newdata)









