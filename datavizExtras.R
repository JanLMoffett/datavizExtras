
library(ggplot2)
library(dplyr)
library(stringr)

#source("colorConstants.R")
#source("extraThemes.R")


#Helper Functions
#----

#a function to make an rgb color object by entering a hex code
hex <- function(hexCode){
  
  u <- as.character(hexCode)
  #make sure input is six digits long, letters and numbers only
  u <- str_remove(u, "[:punct:]")
  u <- str_sub(u, 1, 6)
  u <- paste0("#", u)
  
  return(rgb(t(col2rgb(u)), maxColorValue = 255))
}

#Transparent Color Functions
#----

#make any color object transparent
transpa <- function(colorObject, alpha1to255){
  return(rgb(t(col2rgb(colorObject)), maxColorValue = 255, alpha = alpha1to255))
}

#----

#Plotting functions
#----
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

#----


#Examples
#----

#Demonstrating see_colors function with included colors
see_colors(oj, numCols = 7)

#The plot_colors function is the same as see_colors, but returns the ggplot object so you can
#  override the theme, add more layers, etc.
plot_colors(redrock, numCols = 2) + sandstone #this overrides the void theme

#Example using the transpa function
colorX <- oj["orange5"] #easy way to access a single color constant v["colorName"]
colorXT200 <- transpa(colorX, 200)
colorXT100 <- transpa(colorX, 100)
colorXT50 <- transpa(colorX, 50)

v <- c(colorX, 
       "alpha200" = colorXT200,
       "alpha100" = colorXT100,
       "alpha50" = colorXT50)

plot_colors(v, numCols = 4) + juiceGlass
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
#----

#Example plots to demonstrate themes and color schemes
#----

#working with the diamonds dataset included in ggplot2 package
d <- ggplot2::diamonds
d.index <- dim(d)[1]
#taking random sample to reduce size of dataset
set.seed(953)
d.index <- sample(d.index, size = 10000)
d <- d[d.index,]

#Histogram examples
#----
myLabs <- labs(title = "Distribution of Diamond Prices",
               subtitle = "A sample of observations from diamonds data",
               caption = "Data Source: ggplot2::diamonds",
               tag = "Fig 1.1",
               x = "Price (USD)",
               y = "Count")

q <- ggplot(d) + myLabs

#Orange Juice color scheme
q + juiceGlass +
  geom_histogram(aes(price), 
                   fill = transpa(oj["orange5"], 120), 
                   color = oj["orange5"])
  
#Redrock Canyon color scheme
q + sandstone +
  geom_histogram(aes(price), 
                   fill = transpa(redrock["yucca"], 120), 
                   color = redrock["yucca"])
  

#blkBoard color scheme
q + dustyBlk +
  geom_histogram(aes(price), 
                   fill = transpa(blkboard["green"], 120), 
                   color = blkboard["green"])
  

#JMBN color scheme
q + digiturf +
  geom_histogram(aes(price), 
                   fill = transpa(jmbn["highlighter"], 120), 
                   color = jmbn["highlighter"])
  

#IBM color scheme
q + napkin + 
  geom_histogram(aes(price), 
                   fill = transpa(ibm["purple"], 120), 
                   color = ibm["purple"])
#----


#Boxplot examples
#----
myLabs <- labs(title = "Distribution of Diamond Prices by Color",
               subtitle = "A sample of observations from diamonds data",
               caption = "Data Source: ggplot2::diamonds",
               tag = "Fig 1.2",
               x = "Price (USD)",
               y = "Color Grade")

q <- ggplot(d) + myLabs


#Orange Juice color scheme
grad7 <- colorRampPalette(oj[c("orange1","orange5")])(7)

q + juiceGlass +
  geom_boxplot(aes(price, color), 
                   fill = grad7, 
                   color = oj["orangeK"])

#Redrock Canyon color scheme
grad7 <- colorRampPalette(redrock[c("cloud","sky","night")])(7)

q + sandstone +
  geom_boxplot(aes(price, color), 
               fill = grad7)

#blkBoard color scheme
grad7 <- colorRampPalette(blkboard[c("purple","blue")])(7)

q + dustyBlk +
  geom_boxplot(aes(price, color), 
               fill = grad7,
               color = "white")


#JMBN color scheme
grad7 <- colorRampPalette(jmbn[c("periwinkle","navy")])(7)

q + digiturf +
  geom_boxplot(aes(price, color), 
               fill = grad7,
               color = jmbn["blush"])


#IBM color scheme
grad7 <- colorRampPalette(ibm[c("yellow","orange")])(7)

q + napkin +
  geom_boxplot(aes(price, color), 
               fill = grad7)

#----



#Scatterplot examples
#----
myLabs <- labs(title = "Diamond Prices by Weight",
               subtitle = "A sample of observations from diamonds data",
               caption = "Data Source: ggplot2::diamonds",
               tag = "Fig 1.3",
               x = "Weight (Carats)",
               y = "Price (USD)")

q <- ggplot(d) + myLabs


#Orange Juice color scheme
grad7 <- colorRampPalette(oj[c("orange1","orange5")])(7)
names(grad7) <- levels(d$color)

q + juiceGlass +
  geom_point(aes(x = carat, y = price, color = color)) + 
  scale_color_manual(values = grad7)

#Redrock Canyon color scheme
grad7 <- colorRampPalette(redrock[c("cloud","sky","night")])(7)
names(grad7) <- levels(d$color)

q + sandstone +
  geom_point(aes(x = carat, y = price, color = color)) + 
  scale_color_manual(values = grad7)

#blkBoard color scheme
grad7 <- colorRampPalette(blkboard[c("purple","blue")])(7)
names(grad7) <- levels(d$color)

q + dustyBlk +
  geom_point(aes(x = carat, y = price, color = color)) + 
  scale_color_manual(values = grad7)

#JMBN color scheme
grad7 <- colorRampPalette(jmbn[c("periwinkle","navy")])(7)
names(grad7) <- levels(d$color)

q + digiturf +
  geom_point(aes(x = carat, y = price, color = color)) + 
  scale_color_manual(values = grad7)

#IBM color scheme
grad7 <- colorRampPalette(ibm[c("yellow","orange")])(7)
names(grad7) <- levels(d$color)

q + napkin +
  geom_point(aes(x = carat, y = price, color = color)) + 
  scale_color_manual(values = grad7)
#----



