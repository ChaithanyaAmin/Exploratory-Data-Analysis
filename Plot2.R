### Question 2:
#### Have total emissions from PM2.5 decreased in the Baltimore City, Maryland ( fips == “24510”) from 1999 to 2008? Use the base plotting system to make a plot answering this question.

#### Code performed:

bal <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year) %>%
  summarise(Emissions = sum(Emissions))

with(bal,
     barplot(height=Emissions/1000, names.arg = year, col = color_range, 
             xlab = "Year", ylab = expression('PM'[2.5]*' (Kilotons)'),
             main = expression('Baltimore City, Maryland - Emissions (1999 to 2008)'))
)
