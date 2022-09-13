### Question 1:
#### Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

#### Code performed:

em_total <- aggregate(Emissions ~ year, NEI, FUN = sum)
color_range <- 2:(length(em_total$year)+1)
with(em_total, 
     barplot(height=Emissions/1000, names.arg = year, col = color_range, 
             xlab = "Year", ylab = expression('PM'[2.5]*' (Kilotons)'),
             main = expression('Total Emissions from PM'[2.5]*' (1999 to 2008)')))
