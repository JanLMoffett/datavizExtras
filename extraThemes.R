

library(ggplot2)
source("colorConstants.R")

#----

#juiceGlass is a low-key, light blue theme that goes well with brightly colored plots
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
  #plot.caption = element_text(),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(color = oj["blueK"]),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = oj["blue1"], color = oj["blue1"], size = 1),
  strip.text = element_text(color = oj["blueK"]),
  
  complete = FALSE,
  validate = TRUE
)

#----

#Napkin is a mostly white minimalist theme
#----
napkin <- theme(
  
  line = element_line(lineend = "square"),
  rect = element_rect(fill = "white"),
  text = element_text(family = "sans", color = "black", size = 12, hjust = 0.5, vjust = 0.5),
  title = element_text(family = "sans", color = "black", size = 12, hjust = 0.5, vjust = 0),
  
  axis.title = element_text(family = "sans", face = "bold", color = "gray15", size = 13),
  axis.text = element_text(family = "sans", color = "gray15"),
  axis.ticks = element_line(size = 0.5, lineend = "square", color = "gray15"),
  axis.ticks.length = unit(2, "mm"),
  
  axis.line = element_line(color = "black", size = 1, lineend = "round"),
  
  legend.background = element_rect(fill = "white", color = "gray70", size = 1, linetype = 1),
  legend.margin = margin(10,10,10,10, unit = "pt"),
  legend.key = element_rect(fill = "white", linetype = "blank"),
  legend.text = element_text(color = "gray15"),
  legend.text.align = 0.5,
  legend.title = element_text(face = "bold", size = 12),
  legend.title.align = 0.5,
  legend.position = "right",
  legend.direction = "vertical",
  legend.justification = "top",
  legend.box = "vertical",
  legend.box.just = "center",
  legend.box.margin = margin(6,6,6,6),
  legend.box.background = element_rect(fill = "gray90", linetype = "blank"),
  
  panel.background = element_rect(fill = "white"),
  panel.border = element_rect(fill = NA, color = "gray70", size = 1),
  panel.spacing = unit(10, "pt"),
  panel.grid.major = element_line(color = "gray90", size = 0.5),
  panel.grid.minor = element_line(color = "white", size = 0.5),
  
  plot.background = element_rect(fill = "white"),
  plot.title = element_text(family = "sans", face = "bold", size = 18, color = "black", hjust = 0.5),
  plot.subtitle = element_text(family = "sans", face = "italic", size = 12, color = "gray15", hjust = 0.5),
  #plot.caption = element_text(),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(color = "black"),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = "gray90", color = "gray70", size = 1),
  strip.text = element_text(color = "black"),
  
  complete = FALSE,
  validate = TRUE
)

#----


#Sandstone theme to use with Redrock design scheme
#----
sandstone <- theme(
  text = element_text(family = "sans", color = redrock["mud"], size = 12, hjust = 0.5, vjust = 0.5),
  title = element_text(family = "sans", color = redrock["mud"], size = 12, hjust = 0.5, vjust = 0),
  
  axis.title = element_text(family = "sans", face = "bold", color = redrock["mud"], size = 13),
  axis.text = element_text(family = "sans", color = redrock["mud"]),
  axis.ticks = element_line(size = 0.5, lineend = "square", color = redrock["mud"]),
  axis.ticks.length = unit(2, "mm"),
  
  axis.line = element_line(color = redrock["mud"], size = 1, lineend = "round"),
  
  legend.background = element_rect(fill = NA, linetype = "blank"),
  legend.margin = margin(10,10,10,10, unit = "pt"),
  legend.key = element_rect(fill = NA, linetype = "blank"),
  legend.text = element_text(color = redrock["mud"]),
  legend.text.align = 0.5,
  legend.title = element_text(color = redrock["mud"], face = "bold", size = 12),
  legend.title.align = 0.5,
  legend.position = "right",
  legend.direction = "vertical",
  legend.justification = "top",
  legend.box = "vertical",
  legend.box.just = "center",
  legend.box.margin = margin(6,6,6,6),
  legend.box.background = element_rect(fill = "antiquewhite", linetype = "blank"),
  
  panel.background = element_rect(fill = "antiquewhite"),
  panel.border = element_rect(fill = NA, color = redrock["sand"], size = 0.5),
  panel.spacing = unit(10, "pt"),
  panel.grid.major = element_line(color = redrock["stone"], size = 0.5),
  panel.grid.minor = element_line(color = redrock["stone"], size = 0.25),
  
  plot.background = element_rect(fill = redrock["stone"]),
  plot.title = element_text(family = "sans", face = "bold", size = 18, color = redrock["mud"], hjust = 0.5),
  plot.subtitle = element_text(family = "sans", face = "italic", size = 12, color = redrock["cocoa"], hjust = 0.5),
  plot.caption = element_text(family = "sans", size = 10, color = redrock["mud"]),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(color = redrock["terracotta"]),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = redrock["stone"], color = redrock["sand"], size = 0.5),
  strip.text = element_text(color = redrock["mud"]),
  
  complete = FALSE,
  validate = TRUE
)

#----


#dustyBlk theme to use with blkboard Design scheme
#----
dustyBlk <- theme(
  
  line = element_line(color = "white", linetype = "solid", lineend = "square", size = 0.5),
  rect = element_rect(fill = blkboard["greyDk"]),
  text = element_text(family = "mono", color = "gray95"),
  title = element_text(family = "mono", color = "gray95"),
  
  axis.title = element_text(family = "mono", face = "bold", color = "gray95", size = 14, margin = margin(2,2,2,2,"pt")),
  axis.text = element_text(family = "mono", color = "gray80", size = 11),
  axis.ticks = element_line(size = 0.5, lineend = "square", color = "gray80"),
  axis.ticks.length = unit(2, "mm"),
  
  axis.line = element_line(color = "gray90", size = 0.5),
  
  legend.background = element_rect(fill = blkboard["greyDk"], linetype = "blank"),
  legend.margin = margin(10,10,10,10, unit = "pt"),
  legend.key = element_rect(fill = "gray10", linetype = "blank"),
  legend.text = element_text(color = "gray95", size = 11),
  legend.text.align = 0.5,
  legend.title = element_text(face = "bold", size = 14),
  legend.title.align = 0.5,
  legend.position = "right",
  legend.direction = "vertical",
  legend.justification = "top",
  legend.box = "vertical",
  legend.box.just = "center",
  legend.box.margin = margin(6,6,6,6),
  legend.box.background = element_rect(fill = blkboard["greyLt"], linetype = "blank"),
  
  panel.background = element_rect(fill = "gray10"),
  panel.border = element_rect(fill = NA, color = blkboard["greyLt"], size = 1),
  panel.spacing = unit(10, "pt"),
  panel.grid.major = element_line(color = "black", size = 0.5),
  panel.grid.minor = element_line(color = "gray5", size = 0.5),
  
  plot.background = element_rect(fill = blkboard["greyDk"]),
  plot.title = element_text(family = "mono", face = "bold", size = 18, color = "white", hjust = 0.5),
  plot.subtitle = element_text(family = "mono", face = "italic", size = 12, color = "white", hjust = 0.5),
  #plot.caption = element_text(),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(color = "white"),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = blkboard["greyLt"], blkboard["greyLt"], size = 1),
  strip.text = element_text(color = "white"),
  
  complete = FALSE,
  validate = TRUE
)

#----


#digiturf theme to use with JMBN Design scheme
#----
digiturf <- theme(
  
  line = element_line(color = jmbn["mint"], linetype = "solid", lineend = "square", size = 0.5),
  rect = element_rect(fill = jmbn["turf"]),
  text = element_text(family = "sans", color = jmbn["blush"]),
  title = element_text(family = "serif", color = jmbn["blush"]),
  
  axis.title = element_text(face = "bold", color = jmbn["blush"], size = 16, margin = margin(2,2,2,2,"pt")),
  axis.text = element_text(color = jmbn["mint"], size = 11),
  axis.ticks = element_line(size = 0.5, lineend = "square", color = jmbn["mint"]),
  axis.ticks.length = unit(2, "mm"),
  axis.line = element_line(color = jmbn["mint"], size = 0.5),
  
  legend.background = element_rect(fill = jmbn["hunter"], linetype = "blank"),
  legend.margin = margin(10,10,10,10, unit = "pt"),
  legend.key = element_rect(fill = jmbn["hunter"], linetype = "blank"),
  legend.text = element_text(color = jmbn["mint"], size = 11),
  legend.text.align = 0.5,
  legend.title = element_text(color = jmbn["blush"], face = "bold", size = 16),
  legend.title.align = 0.5,
  legend.position = "right",
  legend.direction = "vertical",
  legend.justification = "top",
  legend.box = "vertical",
  legend.box.just = "center",
  legend.box.margin = margin(6,6,6,6),
  legend.box.background = element_rect(fill = jmbn["turf"], color = jmbn["hunter"], size = 1),
  
  panel.background = element_rect(fill = jmbn["hunter"]),
  panel.border = element_rect(fill = NA, color = jmbn["turf"], size = 0.5),
  panel.spacing = unit(10, "pt"),
  panel.grid.major = element_line(color = jmbn["turf"], size = 0.5),
  panel.grid.minor = element_line(color = jmbn["hunter"], size = 0.5),
  
  plot.background = element_rect(fill = jmbn["turf"]),
  plot.title = element_text(face = "bold", size = 24, color = jmbn["blush"], hjust = 0.5),
  plot.subtitle = element_text(family = "sans", face = "italic", size = 12, color = jmbn["thistle"], hjust = 0.5),
  plot.caption = element_text(family = "sans", color = jmbn["mint"], size = 11),
  plot.margin = margin(15,15,15,15),
  plot.tag = element_text(family = "sans", color = jmbn["mint"], size = 16),
  plot.tag.position = c(0.95,1),
  
  strip.background = element_rect(fill = jmbn["turf"], jmbn["mint"], size = 0.5),
  strip.text = element_text(family = "serif", face = "bold", size = 13, color = jmbn["blush"]),
  
  complete = FALSE,
  validate = TRUE
)

#----


