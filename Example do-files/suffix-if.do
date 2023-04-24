// load example dataset
sysuse auto, clear

// inspect available variables
describe

// summary statistics of foreign cars
sum if foreign

// generate dummy for expensive cars
gen expensive = price >= 10000