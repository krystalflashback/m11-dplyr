# Exercise 1: Data Frame Practice

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fuelecnomy package
library(fueleconomy)

# You should have have access to the `vehicles` data.frame
View(vehicles)

# Create a data.frame of vehicles from 1997
car.1997 <- data.frame(vehicles$year == 1997)

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(car.1997$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
more.than.20 <- data.frame[vehicles$drive == '2-Wheel Drive' && vehicles$cty > 20]

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
ID.worst.hwy <- more.than.20$id[more.than.20$hwy == min(more.than.20$hwy)]

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
MostHwy <- function(year, make) {
  filtered <- vehicles[vehicles$make == make & vehicles$year == year,]
  return(filtered[filtered$hwy == max(filtered$hwy),])
}

# What was the most efficient honda model of 1995?
MostHwy(1995,'Honda')

