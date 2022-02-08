# This is a comment. If you put # at the start of a line, R will not try to run this as code.

# This file is an R script. This is simpler than an R Notebook and the "original" way to do things in R. THere is no Markdown here.
# You won't see your output and code together. There are no chunks. Just R code! Plots will appear in the bottom-right. Other output will appear in the console below.
# Why use a script? Easier to just code. R Notebooks are great for reports and assignments.
# I sometimes start my code in an R script to get things going and then move it into a chunks in an R Notebook.
# You can actually turn a script into a Notebook: https://rdrr.io/cran/rmarkdown/man/compile_notebook.html

# How do you run code in a script? To run one line, put your cursor at then end of the line. Then, type COMMAND-RETURN on a Mac and CTRL-RETURN on a PC. You can also hit the Run button above.
# You can run multiple lines by selecting them and hitting Run.

# How should you start a script? Load your libraries first. Here are three commonly used libraries.
# Remember, you need to install the packages before you can load them. But, on your own machines, you only need to install them once.
# To install a package, the easiest thing to do is to go under Packages in the lower-right and click Install.

# Tidyverse Packages
library(tidyverse) # This package contains a bunch of useful libraries: https://www.tidyverse.org/packages/. Includes dplyr, ggplot2, etc.

# Clean code and organization
library(styler) # Adds functionality under the Addins button above. Will style your code to make it easier to read.
library(here)

# Data cleaning
library(janitor)

# You can get help on packages in the bottom-right. Go to Help and search for the package once it is loaded. 

# Let's do some of the code that is also in 01-notebook-example. 

# cars data is built-in to R. Run this line and see the output below in the console.
summary(cars)

# Let's make a graph using a Base R command. We'll talk about graphs very soon. See the plot appear in the bottom-right?
# You can save plots to your computer by exporting them. Click the broom to get rid of the plots that you've created.
plot(cars)

# dplyr comes with some star wars data built-in. Let's look at it and assign it to an object in our global environment.
# The :: let's us put the package name and then the function/data set. We do this to help us know where a certain function or built-in data set is coming from.
# There are many, many packages in R and it can get confusing exactly where each function lives. Especially when they have the same names!
# See the message about "masking" in the console when you load the tidyverse library.
dplyr::starwars
star <- dplyr::starwars

# Now that star is in the global environment in the upper-right, you can click the little blue triangle button and preview the data frame. 
# Data frames (tibbles) are like a spread sheet. This one was 87 rows and 13 columns. Click on star to open up the whole thing.

# What about external files? We are going to use the here package.
# See this link for more: https://github.com/jennybc/here_here
here::here()
here::here("data", "ncbreweries.csv")
nc_brew <- read_csv(here::here("data", "ncbreweries.csv"))

# We need the here::here because of the order that we loaded our packages. There are several functions named here and we need to specify which one we want.

# Want to see why here::here() chose to start at a certain location?
dr_here()
