setwd("d:/R/learning")

#This uses the python fastf1 package, so that needs to be installed in the relevant python enviroment
#Solution was to activate the r-reticulate enviroment in conda (This is the enviroment that the r-reticulate R package uses)
#start command line

#Get a list of the enviroments on the PC

#conda info --envs

#Activate the relevant enviroment

#conda active <path to r-reticulate>

#pip install fast1


#The memoise package is also required

install.packages("memoise")


#Now we install the f1 package from gihub using  the remotess::install_github(" function

if (!require("remotes")) install.packages("remotes")
remotes::install_github("SCasanova/f1dataR")




#Load the library into the R workspace

library(f1dataR)


#A loada few of the fucntionfs to check that the install went ok.

load_laps(season = 'current', race = 'last')


load_drivers(season = 2022)















get_driver_telemetry(2022, 4, driver = 'PER')
