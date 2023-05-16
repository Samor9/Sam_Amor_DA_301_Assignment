install.packages("tidyverse")

# Importing the tidyverse package
library(tidyverse)

# Importing the ggplot2 package
library(ggplot2)

# Importing tidyverse of dplyr for the group_by function.
library(dplyr)

turtle_sales <- read.csv("turtle_sales.csv", header = TRUE)

# Exploring the data
# Displaying the first 10 rows of the data
head(turtle_sales, 10)

# A summary of the data frame statistics
summary(turtle_sales)

# The dimensions of the data
dim(turtle_sales)

# Checking for missing data
colSums(is.na(turtle_sales))

# Removing columns and creating a subset of the data
turtle_sales_cleaned <- turtle_sales[, !names(turtle_sales) %in% c("Ranking", "Year", "Genre", "Publisher")]

# Displaying the first 10 rows of the subset
head(turtle_sales_cleaned, 10)

# Summary of the subset 
summary(turtle_sales_cleaned)

# Scatterplot of the global sales v EU sales
ggplot(turtle_sales_cleaned, aes(x = Global_Sales, y = EU_Sales)) +
  geom_point() +
  labs(x = "Global Sales", y = "EU Sales") +
  ggtitle("Scatterplot of Global Sales vs. EU Sales")

# Scatterplot of the global sales v NA sales
ggplot(turtle_sales_cleaned, aes(x = Global_Sales, y = NA_Sales)) +
  geom_point() +
  labs(x = "Global Sales", y = "NA Sales") +
  ggtitle("Scatterplot of Global Sales vs. NA Sales")

# Scatterplot of EU sales v NA sales
ggplot(turtle_sales_cleaned, aes(x = NA_Sales, y = EU_Sales)) +
  geom_point() +
  labs(x = "NA Sales", y = "EU Sales") +
  ggtitle("Scatterplot of NA Sales vs. EU Sales")

# Histogram of frequency of global sales
ggplot(turtle_sales_cleaned, aes(x = Global_Sales)) +
  geom_histogram() +
  labs(x = "Global Sales", y = "Frequency") +
  ggtitle("Histogram of Global Sales")

# Histogram of frequency of NA sales
ggplot(turtle_sales_cleaned, aes(x = NA_Sales)) +
  geom_histogram() +
  labs(x = "NA Sales", y = "Frequency") +
  ggtitle("Histogram of NA Sales")

# Histogram of frequency of EU sales
ggplot(turtle_sales_cleaned, aes(x = EU_Sales)) +
  geom_histogram() +
  labs(x = "EU Sales", y = "Frequency") +
  ggtitle("Histogram of EU Sales")