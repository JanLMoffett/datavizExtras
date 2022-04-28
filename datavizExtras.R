
library(ggplot2)
library(dplyr)

#Color Constants
#----
#Basic colors
basic <- c(
  orangeDark = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  orangeFire = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  orangeBright = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  orangeLight = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  orangePale = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  
  blueDark = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  blueNeon = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  blueBright = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  blueLight = rgb(t(col2rgb("#000000")), maxColorValue = 255),
  bluePale = rgb(t(col2rgb("#000000")), maxColorValue = 255)
  
  )

blkboard <- c(
  orange = rgb(t(col2rgb("#ffa182")), maxColorValue = 255),
  yellow = rgb(t(col2rgb("#e9ff7d")), maxColorValue = 255),
  green = rgb(t(col2rgb("#61ff90")), maxColorValue = 255),
  blue = rgb(t(col2rgb("#12ccff")), maxColorValue = 255),
  purple = rgb(t(col2rgb("#cb6bff")), maxColorValue = 255),
  greyDk = rgb(t(col2rgb("#404040")), maxColorValue = 255),
  greyLt = rgb(t(col2rgb("#545454")), maxColorValue = 255)
  
)

#Colors from my website
jmbn <- c(
  hunter = rgb(t(col2rgb("#21332a")), maxColorValue = 255),
  turf = rgb(t(col2rgb("#375949")), maxColorValue = 255),
  mint = rgb(t(col2rgb("#8fffc9")), maxColorValue = 255),
  
  turquoise = rgb(t(col2rgb("#33ccb8")), maxColorValue = 255),
  highlighter = rgb(t(col2rgb("#c2ff0a")), maxColorValue = 255),
  rose = rgb(t(col2rgb("#ff9ce0")), maxColorValue = 255),
  
  blush = rgb(t(col2rgb("#e6dfe3")), maxColorValue = 255),
  thistle = rgb(t(col2rgb("#e3c1d8")), maxColorValue = 255),
  mauve = rgb(t(col2rgb("#826579")), maxColorValue = 255),
  
  periwinkle = rgb(t(col2rgb("#a3afff")), maxColorValue = 255),
  navy = rgb(t(col2rgb("#3d447d")), maxColorValue = 255)
)


#Red Rock Canyon Colors
redrock <- c(
  mud = rgb(t(col2rgb("#763f28")), maxColorValue = 255),
  cocoa = rgb(t(col2rgb("#7f5541")), maxColorValue = 255),
  stone = rgb(t(col2rgb("#e8cfb9")), maxColorValue = 255),
  
  sand = rgb(t(col2rgb("#c6997a")), maxColorValue = 255),
  cinnamon = rgb(t(col2rgb("#c08566")), maxColorValue = 255),
  terracotta = rgb(t(col2rgb("#bf704f")), maxColorValue = 255),
  
  moss = rgb(t(col2rgb("#524735")), maxColorValue = 255),
  cactus = rgb(t(col2rgb("#797236")), maxColorValue = 255),
  yucca = rgb(t(col2rgb("#c4ad50")), maxColorValue = 255),
  
  cloud = rgb(t(col2rgb("#9aa7af")), maxColorValue = 255),
  sky = rgb(t(col2rgb("#3874a2")), maxColorValue = 255),
  night = rgb(t(col2rgb("#1b456b")), maxColorValue = 255)
)

#function to demo colors in plot window
see_colors <- function(aColorVector, buffer = 1, numCols = 3){
  
  len1 = length(aColorVector)
  cols1 = numCols
  rows1 = ceiling(len1/cols1)
  
  #set the coordinates of the plot based on the length of the vector
  xMin = 0
  xMax = (cols1 + buffer)*100
  
  yMin = 0
  yMax = (rows1 + buffer)*100
  
  #put the color vector in a dataframe with generated coordinates to draw rectangles
  x1 = rep(seq(from = 1, to = cols1, by = 1)*100, times = rows1)[1:len1]
  y1 = sort(rep(seq(from = 1, to = rows1, by = 1)*100, times = cols1)[1:len1])
  colors1 = aColorVector
  names1 = names(aColorVector)
  
  df1 <- data.frame(x1 = x1, y1 = y1, colors1 = colors1, names1 = names1)
  
  ggplot(df1) + coord_cartesian(xlim = c(xMin, xMax), ylim = c(yMin, yMax)) + 
    geom_tile(aes(x1, y1, width = 66, height = 66), fill = colors1) + 
    annotate("text", x = x1, y = y1-40, label = names1) + 
    annotate("text", x = x1, y = y1, label = as.character(colors1)) + 
    theme_void()
}

#takes a named vector of rgb objects and returns a ggplot 
plot_colors <- function(aColorVector, buffer = 1, numCols = 3){
  
  len1 = length(aColorVector)
  cols1 = numCols
  rows1 = ceiling(len1/cols1)
  
  #set the coordinates of the plot based on the length of the vector
  xMin = 0
  xMax = (cols1 + buffer)*100
  
  yMin = 0
  yMax = (rows1 + buffer)*100
  
  #put the color vector in a dataframe with generated coordinates to draw rectangles
  x1 = rep(seq(from = 1, to = cols1, by = 1)*100, times = rows1)[1:len1]
  y1 = sort(rep(seq(from = 1, to = rows1, by = 1)*100, times = cols1)[1:len1])
  colors1 = aColorVector
  names1 = names(aColorVector)
  
  df1 <- data.frame(x1 = x1, y1 = y1, colors1 = colors1, names1 = names1)
  
  plot1 <- ggplot(df1) + coord_cartesian(xlim = c(xMin, xMax), ylim = c(yMin, yMax)) + 
    geom_tile(aes(x1, y1, width = 66, height = 66), fill = colors1) + 
    annotate("text", x = x1, y = y1-40, label = names1) + 
    annotate("text", x = x1, y = y1, label = as.character(colors1)) + 
    theme_void()
  
  return(plot1)
}

#examples:
see_colors(redrock)
see_colors(jmbn)
see_colors(blkboard, numCols = 2)

plot_colors(redrock) + theme_bw() #this overrides the void theme

  
  





#----

#Transparent Color Functions
#----
clrt_red <- function(alphaLvl = 128){rgb(,maxColorValue = 255, alpha = alphaLvl)}
clrt_orange <- function(alphaLvl){}


#----


#ggplot2 Themes
#----


#----

