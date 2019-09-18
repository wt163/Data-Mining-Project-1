# Data-Mining-Project-1
Creating an R-package and Shiny App For 588 Data Mining

The file called "Homework 2" is the base file of the pacakge.  The first function is just a scatter plot to compare the density plots to.  The second function is the same as he had in the slides, except I removed the seperate x and y resolutions and just made one parameter to control both of the resolutions.  I also added an option (that is false by default) to output the original scatter plot with the density plot.  The 3rd function is a 3D binplot, and it works the same way.  It also has the option (also false by default), to output the 2D bin plot and/or scatter plots.  You'll need to install the plot3D package for it to work.

The shiny app shows off each function in the package.  It has a slider to control the number of observations, and a slider for the resolution. 
