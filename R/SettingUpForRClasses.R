#In part 2 you need to make an important change to the code!! 

#run each section one at a time
#anything with a hashtag (#) in front is a comment and not code


# part 1 ------------------------------------------------------------------

#to run: highlight the section of code and push the Run button above
#it will take a few minutes
#watch the Console area below for the caret (>) to return, indicating it's done

packages <- c("tidyverse", "stringr", "janitor", "rmarkdown", "lubridate", "ggthemes", "knitr", "htmltools", "rprojroot")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())), repos = "http://cran.us.r-project.org")  
}



# part 2 ------------------------------------------------------------------


#IMPORTANT CHANGE NEEDS TO BE MADE HERE
#Change this path (below) to the place on your computer that you want to store your R work 
#the syntax will be slightly different for a Mac
#Then run this line of code by highlighting this one line and pushign the Run button above

setwd('C:/Users/webstmj/Documents')



# part 3 ------------------------------------------------------------------


#This next section will create some folders in the directory you specified above
#then download zip files and unzip them in the correct directories
#highlight all of it and push the Run button

setup_folders <- function(){
  
  folder_names <- c("R_GettingStarted", "R_BasicOperations", "R_CleaningData")
  
  sapply(folder_names, dir.create)
  
}
setup_folders()


# download zip file for Getting Started With R class
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/GettingStartedWithR_Boston.zip", destfile="./R_GettingStarted/GettingStartedWithR_Boston.zip", method='auto')
unzip('./R_GettingStarted/GettingStartedWithR_Boston.zip', exdir='./R_GettingStarted')

#Download zip file for Basic Operations in R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/BasicOperationsinR_Boston.zip", destfile="./R_BasicOperations/BasicOperationsinR_Boston.zip", method='auto')
unzip('./R_BasicOperations/BasicOperationsinR_Boston.zip', exdir='./R_BasicOperations')


#Download zip file for Power of data Cleaning with R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/PowerofDataCleaning_Boston.zip", destfile="./R_CleaningData/PowerofDataCleaning_Boston.zip", method='auto')
unzip('./R_CleaningData/PowerofDataCleaning_Boston.zip', exdir='./R_CleaningData')




