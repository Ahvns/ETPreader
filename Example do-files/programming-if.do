// define scalars
sca a = runiformint(0, 10)
sca b = runiformint(0, 10)

// display the value of the scalars
di as text "Scalar a holds value " as result a
di as text "Scalar b holds value " as result b

// display which scalar is larger
if      a > b   di as text "The largest scalar is " as result "a"
else if a < b   di as text "The largest scalar is " as result "b"
else            di as text "Both scalars are equal"