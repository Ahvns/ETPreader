// Import example dataset (this is part of Stata!)
sysuse auto, clear

// Define the local
local controls mpg headroom trunk weight length

// Show summary statistics of control variables
sum `controls'

// Run a regression
reg price `controls', r