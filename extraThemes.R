

library(ggplot2)
source("colorConstants.R")

#----
juiceGlass <- theme(
  
  line = element_line(lineend = "butt"),
  rect = element_rect(fill = oj["blue0"]),
  text = element_text(family = "sans", color = oj["blueK"], size = 12, hjust = 0.5, vjust = 0.5),
  title = element_text(family = "sans", color = oj["blueK"], size = 12, hjust = 0.5, vjust = 0),
  
  axis.title = element_text(family = "sans", face = "bold", color = oj["blueK"], size = 13),
  axis.text = element_text(family = "sans", color = oj["blueK"]),
  axis.ticks = element_line(size = 0.5, lineend = "square", color = oj["blueK"]),
  axis.ticks.length = unit(2, "mm"),
  
  axis.line = element_line(color = oj["blueK"], size = 1, lineend = "round"),
  
  legend.background = element_rect(fill = oj["blue0"], color = oj["blue2"], size = 1, linetype = 1),
  legend.margin = margin(10,10,10,10, unit = "pt"),
  legend.key = element_rect(fill = "white", linetype = "blank"),
  legend.text = element_text(color = oj["blueK"]),
  legend.text.align = 0.5,
  legend.title = element_text(face="bold", size = 12),
  legend.title.align = 0.5,
  legend.position = "right",
  legend.direction = "vertical",
  legend.justification = "top",
  legend.box = "vertical",
  legend.box.just = "center",
  legend.box.margin = margin(6,6,6,6),
  legend.box.background = element_rect(fill = oj["blue1"], linetype = "blank"),
  
  panel.background = element_rect(fill = "white"),
  panel.border = element_rect(fill = NA, color = oj["blue1"], size = 1),
  panel.spacing = unit(10, "pt"),
  panel.grid.major = element_line(color = oj["blue1"], size = 0.5),
  panel.grid.minor = element_line(color = oj["blue0"], size = 0.5),
  
  plot.background = element_rect(fill = oj["blue0"]),
  plot.title = element_text(family = "sans", face = "bold", size = 18, color = oj["blueK"], hjust = 0.5),
  plot.subtitle = element_text(family = "sans", face = "italic", size = 12, color = oj["blueK"], hjust = 0.5),
  plot.caption = element_text(),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(color = oj["blueK"]),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = oj["blue1"], color = oj["blue1"], size = 1),
  strip.text = element_text(color = oj["blueK"]),
  
  complete = FALSE,
  validate = TRUE
)

#----

#Examples
#----

d = diamonds

#Histogram with juiceGlass theme
ggplot(data = d) +
  geom_histogram(aes(x = carat), fill = oj["orange3"], color = oj["orangeK"]) + 
  juiceGlass + 
  labs(title = "Distribution of Carats",
       subtitle = "A sample of observations from diamonds dataset",
       caption = "Source: ggplot2::diamonds",
       tag = "Fig 1.3")


#Faceted plot with juiceGlass theme
d.index <- 1:dim(d)[1]
d.index <- sample(d.index, size = 5000)
d2 <- d[d.index,]
names(d2)[3] <- "colorGrade"

myColors = oj[2:6]
names(myColors) = levels(d2$cut)

ggplot(data = d2) + 
  geom_point(aes(x = carat, y = price, color = cut)) + 
  scale_color_manual(values = myColors) +
  juiceGlass + 
  labs(title = "Price by Carats",
       subtitle = "A sample of observations from diamonds dataset",
       caption = "Source: ggplot2::diamonds",
       tag = "Fig 1.2") + 
  facet_wrap(vars(colorGrade))

#Plot with two legend boxes with juiceGlass theme
myColors = oj[1:7]
names(myColors) = levels(d2$colorGrade)

ggplot(data = d2) + 
  geom_point(aes(x = carat, y = price, color = colorGrade, shape = cut)) + 
  scale_color_manual(values = myColors) +
  juiceGlass + 
  labs(title = "Price by Carats",
       subtitle = "A sample of observations from diamonds dataset",
       caption = "source: ggplot2",
       tag = "Fig 1.1")
  
#----


