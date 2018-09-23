setwd(dir = '~/Desktop/SWC_fall2018')

install.packages("ggplot2")
library(ggplot2)

gapminder <- read.table(file = "Data/gapminder.txt", header = TRUE)
View(gapminder)

ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp)) + geom_point()

#challenge 1
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + 
  geom_line(aes()) + geom_point()


#challenge 2
ggplot(data = gapminder, aes(x = year, y = lifeExp, by = country, color = continent)) + geom_point() + geom_line()

#stats
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point() + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)

#cchallenge 3
ggplot(data = gapminder, aes(x = gdpPercap, y = lifeExp, color = continent)) + 
  geom_point(size = 5, shape = "diamond") + scale_x_log10() + geom_smooth(method = "lm", size = 1.5)

starts.with <- substr(x = gapminder$country, start = 1, stop = 1)
az.countries <- gapminder[starts.with %in% c("A", "Z"),]

ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) + geom_line() + facet_wrap( ~ country )

ggplot(data = az.countries, aes(x = year, y = lifeExp, color = continent)) + geom_line() + facet_wrap(~country) + 
  labs(x = "Year", y = "Life Expectancy", title = "Figure 1", color = "Continent") +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

#challenge 4
ggplot(data = gapminder, aes(x = gdpPercap)) + geom_density(alpha = 0.6, aes(fill = continent)) + scale_x_log10()

