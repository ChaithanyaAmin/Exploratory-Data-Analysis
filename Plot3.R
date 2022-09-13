### Question 3:
#### Of the four types of sources indicated by the (point, nonpoint, onroad, nonroad) variable, which of these four sources have seen decreases in emissions from 1999-2008 for Baltimore City? Which have seen increases in emissions from 1999-2008? Use the ggplot2 plotting system to make a plot answer this question.

#### Code performed:

bal_em <- NEI %>%
  filter(fips == "24510") %>%
  group_by(year, type) %>%
  summarise(Emissions=sum(Emissions))

ggplot(data = bal_em, aes(x = factor(year), y = Emissions, fill = type, colore = "black")) +
  geom_bar(stat = "identity") + facet_grid(. ~ type) + 
  xlab("Year") + ylab(expression('PM'[2.5]*' Emission (kilotons')) +
  ggtitle("Baltimore City Emissions from Various Source Type") 
