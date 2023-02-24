// load example dataset
sysuse citytemp4, clear

// Summary statistics of temparature in January for each division
bysort division: sum tempjan