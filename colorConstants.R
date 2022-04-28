

library(ggplot2)
library(dplyr)
library(stringr)


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


#Color Constants
#----
#Basic colors
oj <- c(
  orange1 = hex("ffd0aa"),
  orange2 = hex("ffb98a"),
  orange3 = hex("ff975b"),
  orange4 = hex("ff7a33"),
  orange5 = hex("ff5500"),
  
  blue1 = hex("9eeaff"),
  blue2 = hex("7aceff"),
  blue3 = hex("4dabff"),
  blue4 = hex("1c85ff"),
  blue5 = hex("006fff")
  
)

blkboard <- c(
  orange = hex("#ffa182"),
  yellow = hex("#e9ff7d"),
  green = hex("#61ff90"),
  blue = hex("#12ccff"),
  purple = hex("#cb6bff"),
  greyDk = hex("#404040"),
  greyLt = hex("#545454")
  
)

#JM Baseball Notebook Colors
#(from my website https://jmbaseballnotebook.com)
jmbn <- c(
  hunter = hex("#21332a"),
  turf = hex("#375949"),
  mint = hex("#8fffc9"),
  turquoise = hex("#33ccb8"),
  highlighter = hex("#c2ff0a"),
  rose = hex("#ff9ce0"),
  blush = hex("#e6dfe3"),
  thistle = hex("#e3c1d8"),
  mauve = hex("#826579"),
  periwinkle = hex("#a3afff"),
  navy = hex("#3d447d")
)


#Red Rock Canyon Colors
#(from a photo of Red Rock Canyon, outside Las Vegas)
redrock <- c(
  mud = hex("#763f28"),
  cocoa = hex("#7f5541"),
  stone = hex("#e8cfb9"),
  
  sand = hex("#c6997a"),
  cinnamon = hex("#c08566"),
  terracotta = hex("#bf704f"),
  
  moss = hex("#524735"),
  cactus = hex("#797236"),
  yucca = hex("#c4ad50"),
  
  cloud = hex("#9aa7af"),
  sky = hex("#3874a2"),
  night = hex("#1b456b")
)

#----