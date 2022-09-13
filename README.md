Exploratory-Data-Analysis
Peer-graded Assignment: Course Project 2
Fine particulate matter (PM2.5) is an ambient air pollutant for which there is strong evidence that it is harmful to human health. In the United States, the Environmental Protection Agency (EPA) is tasked with setting national ambient air quality standards for fine PM and for tracking the emissions of this pollutant into the atmosphere. Approximatly every 3 years, the EPA releases its database on emissions of PM2.5. This database is known as the National Emissions Inventory (NEI).
You can read more information about the NEI at the EPA National Emissions Inventory web site (http://www.epa.gov/ttn/chief/eiinformation.html).
Data
The data for this assignment are available from the course web site as a single zip file:
https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip
The zip file contains two files:
PM2.5 Emissions Data (\color{red}{\verb|summarySCC_PM25.rds|}summarySCC_PM25.rds): This file contains a data frame with all of the PM2.5 emissions data for 1999, 2002, 2005, and 2008. For each year, the table contains number of tons of PM2.5 emitted from a specific type of source for the entire year.
Instruction
For each plot you should:
Construct the plot and save it to a PNG file.
Create a separate R code file (plot1.R, plot2.R, etc.) that constructs the corresponding plot, i.e. code in plot1.R constructs the plot1.png plot. Your code file should include code for reading the data so that the plot can be fully reproduced. You must also include the code that creates the PNG file. Only include the code for a single plot (i.e. plot1.R should only include code for producing plot1.png)
Upload the PNG file on the Assignment submission page
Copy and paste the R code from the corresponding R file into the text box at the appropriate point in the peer assessment.
Install (if not yet) and load packages necessary for the analysis.
install.packages("dplyr")
library(dplyr)
install.packages("ggplot2")
library(ggplot2)
Downloading the data and saving it in the working directory
filename <- "Data_for_Peer_Assessment.zip"

if (!file.exists(filename)) {
  download_url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
  download.file(download_url, destfile = filename)
  unzip (zipfile = filename)
}

if (!exists("NEI")) {
  # print("Loading NEI Data, please wait.")
  NEI <- readRDS("summarySCC_PM25.rds") 
}

if (!exists("SCC")) {
  # print("Loading SCC Data.")
  SCC <- readRDS("Source_Classification_Code.rds")
}
