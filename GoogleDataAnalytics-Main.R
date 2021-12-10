#   Google Data Analytics Course Exercises 
#
#    R  Visualization
#
#
#     Aesthetics - visual property of an object in your plot
#     Geoms   - Geometric object - bars, points, lines
#     Facets  - Display subsets of the data.
#     Labels and Annotations -  Titles captions
#
#  version 9-22-2021  
#  Mike Pastor
#
#
rm( list = ls() )    # Clear Environment objects
















install.packages("palmerpenguins")
library("palmerpenguins")


ggplot( data=penguins, aes( x=flipper_length_mm, y=body_mass_g )) + geom_point(aes(color="purple" ))


ggplot( data=penguins, aes( x=flipper_length_mm, y=body_mass_g )) + geom_point(aes(color=species))

ggplot( data=penguins, 
        aes( x=flipper_length_mm, y=body_mass_g )) + geom_point(aes(shape=species))

ggplot( data=penguins, 
        aes( x=flipper_length_mm, y=body_mass_g )) + geom_point(aes(shape=species, color=species))


ggplot( data=penguins, 
        aes( x=flipper_length_mm, y=body_mass_g )) + labs( title="Pengins - body mass versus Flipper length") 
          geom_point(aes(shape=species) +  
          facet_wrap( ~species ) )

ggplot( data=penguins, 
                  aes( x=flipper_length_mm, y=body_mass_g )) + labs( title="Pengins - body mass versus Flipper length") 
          geom_point(aes(shape=species, color="purple") )
          
          
ggplot( data=penguins, aes( x=flipper_length_mm, y=body_mass_g )) + labs( title="Pengins - body mass versus Flipper length") + geom_point(aes(color="purple" ))
          





#   install.packages("dplyr")
library("dplyr")
#  install.packages("ggplot2")
library(ggplot2)

#install.packages("tidyverse")
library(tidyverse)
#install.packages("readxl")
library(readxl)




















# dataset 
#
#  data files from US New & World report 2021
#
#  healthyCommunitiesData <- readxl::excel_format("HealthiestCommunitiesRankings2021-USNewsWorld.xlsx")

ColonyLossData <- read.csv("COLONY-LOSS-DATA-BIP-2020-21-AnnualAll.csv",  blank.lines.skip=TRUE )

# view the data values  -  number of colonies
ColonyLossData$numcol
ColonyLossData$Total.Annual.All..Colony.Loss

# Add the column names to your code for better clarity
#
names(ColonyLossData)

# # names(ColonyLossData)
# [1] "Year"                           "State"                          "Total.Annual.All..Colony.Loss" 
# [4] "X95..Confidence..Interval"      "Beekeepers"                     "Beekeepers..Exclusive.to.State"
#  [7] "Colonies"                       "Colonies..Exclusive.to.State"  
# # #
# Produce plots of explanatory variables
#
plot( ColonyLossData$Total.Annual.All..Colony.Loss~ColonyLossData$Year, ColonyLossData$Total.Annual.All..Colony.Loss )

ggplot( data=ColonyLossData, aes( x=Year, y=Total.Annual.All..Colony.Loss )) + geom_point()


# Add the next datset - Pesticide data from Kaggle project (cite here)
#
#
honeybeePesticideData <- read.csv("Data/vHoneyNeonic_v03.csv")

# view the data values  -  number of colonies
honeybeePesticideData$numcol
honeybeePesticideData$nAllNeonic

# Add the column names to your code for better clarity
#
names(honeybeePesticideData)

# # [> names(honeybeePesticideData)
# 
# > names(honeybeePesticideData)
# [1] "state"         "numcol"        "yieldpercol"   "totalprod"     "stocks"       
# [6] "priceperlb"    "prodvalue"     "year"          "StateName"     "Region"       
# [11] "FIPS"          "nCLOTHIANIDIN" "nIMIDACLOPRID" "nTHIAMETHOXAM" "nACETAMIPRID" 
# [16] "nTHIACLOPRID"  "nAllNeonic"   
# > 

ggplot( data=honeybeePesticideData, aes( x=nAllNeonic, y=totalprod )) + geom_point()



