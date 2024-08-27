#
#   Random number between a range
#   
#   Purpose: Sets towcit:data rng to a random number between the specified range
#
#   Input: {min: int, max: int}
#

$execute store result storage towcit:data rng int 1 run random value $(min)..$(max)

