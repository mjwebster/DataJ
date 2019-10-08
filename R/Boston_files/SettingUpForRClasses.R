

#For the Tidycensus class, you will need to get an API Key from the U.S. Census Bureau
#It's free and easy. Sign up here: https://api.census.gov/data/key_signup.html




# DIRECTIONS --------------------------------------------------------------


#In part 2 YOU NEED TO MAKE A CHANGE to the code!! 

#run each section one at a time
#anything with a hashtag (#) in front is a comment and not code


# part 1 ------------------------------------------------------------------

#to run: highlight the section of code and push the Run button above
#it will take a few minutes
#watch the Console area below for the caret (>) to return, indicating it's done

packages <- c("tidyverse", "stringr", "janitor", "rmarkdown", "lubridate", 
              "ggthemes", "knitr", "htmltools", "rprojroot", "kableExtra",
              "sf", "mapview", "leaflet", "tidycensus", "devtools", "readxl", "scales", "formattable", "DT")
if (length(setdiff(packages, rownames(installed.packages()))) > 0) {
  install.packages(setdiff(packages, rownames(installed.packages())), repos = "http://cran.us.r-project.org")  
}



# part 2 ------------------------------------------------------------------


#IMPORTANT CHANGE NEEDS TO BE MADE HERE
#Change this path (below) to the place on your computer that you want to 
#store your R work. This script will make new folders and download files to that location
#the syntax will be slightly different for a Mac
#Then run this line of code by highlighting this one line and pushing the Run button above

setwd('C:/Users/webstmj/Documents')



# part 3 ------------------------------------------------------------------


#This next section will create some folders in the directory you specified above
#highlight all of it and push the Run button

setup_folders <- function(){
  
  folder_names <- c("R_GettingStarted", "R_TidyversePart1", "R_CleaningData", "R_TidyversePart2", "R_UsingTidyCensus", "R_Markdown")
  
  sapply(folder_names, dir.create)
  
}
setup_folders()




# part 4 ------------------------------------------------------------------


#This section will download files for each of the R classes
#scheduled for Oct 16th and Oct 17th

# download zip file for Getting Started With R 
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/GettingStartedWithR_Boston.zip", destfile="./R_GettingStarted/GettingStartedWithR_Boston.zip", method='auto')
unzip('./R_GettingStarted/GettingStartedWithR_Boston.zip', exdir='./R_GettingStarted')

#Download zip file for Tidyverse Part 1 in R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/R_TidyversePart1.zip", destfile="./R_TidyversePart1/R_TidyversePart1.zip", method='auto')
unzip('./R_TidyversePart1/R_TidyversePart1.zip', exdir='./R_TidyversePart1')


#Download zip file for Data Cleaning with R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/PowerofDataCleaning_Boston.zip", destfile="./R_CleaningData/PowerofDataCleaning_Boston.zip", method='auto')
unzip('./R_CleaningData/PowerofDataCleaning_Boston.zip', exdir='./R_CleaningData')

#Download zip file for Tidyverse Part 2 in R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/R_TidyversePart2.zip", destfile="./R_TidyversePart2/R_TidyversePart2.zip", method='auto')
unzip('./R_TidyversePart2/R_TidyversePart2.zip', exdir='./R_TidyversePart2')

#Download zip file for Using TidyCensus in R
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/R_UsingTidyCensus.zip", destfile="./R_UsingTidyCensus/R_UsingTidyCensus.zip", method='auto')
unzip('./R_UsingTidyCensus/R_UsingTidyCensus.zip', exdir='./R_UsingTidyCensus')

#Download zip file for RMarkdown
download.file("https://github.com/mjwebster/DataJ/raw/gh-pages/R/R_Markdown.zip", destfile="./R_Markdown/R_Markdown.zip", method='auto')
unzip('./R_Markdown/R_Markdown.zip', exdir='./R_Markdown')

