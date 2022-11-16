#Install a package that can read Excel files


install.packages("xlsx")


#Check to make sure the package has installed

any(grepl("xlsx", installed.packages()))

#If it returned TRUE then the packaage is there

#Now let's load the library into the R workspace
library("xlsx")

#Oopps lit looks like I've got this issue:

#Error: package or namespace load failed for ‘xlsx’:
#   .onLoad failed in loadNamespace() for 'rJava', details:
#   call: fun(libname, pkgname)
# error: JAVA_HOME cannot be determined from the Registry

#Note to self, while R doesn't necessarily support multi-line comments it is possible to  select some lines, press ctrl+shift+c to comment multiple lines



