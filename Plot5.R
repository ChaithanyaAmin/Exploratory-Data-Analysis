## Question 5:
#### How have emissions from motor vehicle sources changed from 1999-2008 in Baltimore City?

#### Code performed:

scc_vehicles <- SCC[grep("[Vv]ehicle", SCC$EI.Sector), "SCC"]
vehicle_em <- NEI %>% 
  filter(SCC %in% scc_vehicles & fips == "24510") %>%
  group_by(year) %>%
  summarise(Emissions = sum(Emissions))

ggplot(coal_em_sum, aes(x=year, y=round(Emissions/1000,2), label=round(Emissions/1000,2), fill=year)) +
  geom_bar(stat="identity") + ylab(expression('PM'[2.5]*' Emissions (Kilotons)')) + xlab("Year") +
  geom_label(aes(fill = year),colour = "white", fontface = "bold") +
  ggtitle("Baltimore City Vehicle Emissions (1999 to 2008).")
