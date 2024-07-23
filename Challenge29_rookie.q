/
Auth: Senthil
Date: 23/07/2024
Challenge - 29

No more rookie numbers - from now on, we're going to pump those numbers up.

We want to find the numbers which have digits which don't decrease when reading the number from left-to-right.
Example good numbers:

1
45
777
1245

Example unwanted numbers:

10
97
2099


How many "good" numbers exist between 0 and your input (inclusive)?

\

/Return if the number is rookie or not
rooki:{x: string x; x~ (asc x)};
/initial number
x:0
/Count of rookie number
c:0
/If the rookie number found, 1 will be added in c
\ts do[520185742;c+:(rooki x);x+:1]

show c
