### Question 4:
#### Across the United States, how have emissions from coal combustion-related sources changed from 1999-2008?

#### Code performed:

scc_coal <- SCC[grep("[Cc][Oo][Aa][Ll]", SCC$EI.Sector), "SCC"]
nei_coal <- NEI %>% filter(SCC %in% scc_coal)
coal_em_sum <- nei_coal %>% group_by(year) %>% summarise(Emissions = sum(Emissions))

ggplot(coal_em_sum, aes(x=year, y=round(Emissions/1000,2), label=round(Emissions/1000,2), fill=year)) +
  geom_bar(stat="identity") + ylab(expression('PM'[2.5]*' Emissions (Kilotons)')) + xlab("Year") +
  geom_label(aes(fill = year),colour = "white", fontface = "bold") +
  ggtitle("Coal Combustion Emissions Across U.S. (1999 to 2008).")
