# datavizExtras
Colors, Themes and Functions to use with ggplot2 for R.

## [colorConstants.R](colorConstants.R)

**oj** - a named vector of 14 colors: orange0, orange1, orange2, orange3, orange4, orange5, orangeK, blue0, blue1, blue2, blue3, blue4, blue5, blueK.

<img src="images/orangeJuiceColors.png" width="250">

**blkboard** - a named vector of 7 colors: orange, yellow, green, blue, purple, greyDK, greyLT.

<img src="images/blkboardColors.png" width="250">

**jmbn** - a named vector of 11 colors: hunter, turf, mint, turquoise, highlighter, rose, blush, thistle, mauve, periwinkle, navy.

<img src="images/jmbnColors.png" width="250">

**redrock** - a named vector of 12 colors: mud, cocoa, stone, sand, cinnamon, terracotta, moss, cactus, yucca, cloud, sky, night.

<img src="images/RedRockCanyonColors.png" width="250">

**ibm** - a named vector of 5 colors: blue, purple, pink, orange, yellow.

<img src="images/ibmColors.png" width="250">

## [extraThemes.R](extraThemes.R)

**juiceGlass** - a ggplot2 theme; a clean, light blue theme that goes well with orange.

<div>
  <img src="images/exampleHist_juiceglass.png" height="200">
  <img src="images/exampleBox_juiceglass.png" height="200">
  <img src="images/exampleScatter_juiceglass.png" height="200">
</div>

**napkin** - a ggplot2 theme; a mostly white minimalist theme.

<div>
  <img src="images/exampleHist_napkin.png" height="200">
  <img src="images/exampleBox_napkin.png" height="200">
  <img src="images/exampleScatter_napkin.png" height="200">
</div>

**sandstone** - a ggplot2 theme; a theme for the redrock color scheme.

<div>
  <img src="images/exampleHist_sandstone.png" height="200">
  <img src="images/exampleBox_sandstone.png" height="200">
  <img src="images/exampleScatter_sandstone.png" height="200">
</div>

**dustyBlk** - a ggplot2 theme; a theme for the blkboard color scheme.

<div>
  <img src="images/exampleHist_dustyBlk.png" height="200">
  <img src="images/exampleBox_dustyBlk.png" height="200">
  <img src="images/exampleScatter_dustyBlk.png" height="200">
</div>

**digiturf** - a ggplot2 theme; a theme for the jmbn color scheme.

<div>
  <img src="images/exampleHist_digiturf.png" height="200">
  <img src="images/exampleBox_digiturf.png" height="200">
  <img src="images/exampleScatter_digiturf.png" height="200">
</div>

## [datavizExtras.R](datavizExtras.R)

**hex(hexCode)** - a function that takes a six-digit hex code and returns an rgb color object.

**transpa(colorObject, alpha1to255)** - a function that takes an rgb color object and an integer between 0 (0% opacity) and 255 (100% opacity), and returns a transparent version of the same color.  

**see_colors(aColorVector, buffer = 1, numCols = 3)** - a function that takes a vector of colors, named or unnamed, and produces a plot showing the colors and their hex values.

**plot_colors(aColorVector, buffer = 1, numCols = 3)** - a function that takes a vector of colors, named or unnamed, and returns a ggplot object showing the colors and their hex values.













