// repeat display command ten times
forvalues i = 1/10 {
    // display current value of local
    di as text "Current value: " as result "`i'"
}

// using only odd numbers
forvalues i = 1(2)10 {
    // display current value of local
    di as text "Current value: " as result "`i'"
}

/* a more complex example */
// load example dataset
sysuse auto, clear

// sort by make of car
sort make

// obtain the average price using summary statistics
sum price
sca avg_price   = r(mean)

// display some information on the first ten cars
// loop over values 1 to 10
forvalues i = 1/10 {
    
    // is it a foreign or domestic car?
    if foreign[`i'] loc car_origin  = "an imported car"
    else            loc car_origin  = "a domestic car"
        
    // is the price above or below average?
    if price[`i'] > avg_price   loc car_price   = "above average"
    else                        loc car_price   = "below average"
    
    // display the information
    di as result make[`i'] as text " is " as result "`car_origin'" as text ", and its price is " as result "`car_price'" as text "."
}
