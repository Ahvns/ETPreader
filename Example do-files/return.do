// load example dataset
sysuse auto, clear

// summary statistics of weight
sum weight

// list available results
return list

// report one of these results
di as text "Average weight is: " as result r(mean) as text " lbs."

// simple regression
reg price mpg headroom trunk weight length, r

// list available results
ereturn list

// report one of these results
di as text "On average, one lbs. extra weight leads to a price increase of " as result e(b)[1,4] as text ", ceteris paribus."
