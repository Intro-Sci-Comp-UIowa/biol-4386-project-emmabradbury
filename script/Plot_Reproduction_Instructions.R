# Instructions to Reproduce Figure 1- Court Totals
# Open R Studio
# Go to https://github.com/Intro-Sci-Comp-UIowa/biol-4386-project-emmabradbury
# "Clone or Download" the repository to your R environment
git clone https://github.com/Intro-Sci-Comp-UIowa/biol-4386-project-emmabradbury.git

# Description of all materials in the Repository and the original project found under README.md
# Set Working Directory to biol-4386-project-emmabradbury
setwd("~/biol-4386-project-emmabradbury")

# Import the dataset to global environment
data <- read.csv(file = 'analysis/court_totals.csv')

# Here is where you could add to or edit the numbers in the dataset if needed
# Create plot
# 