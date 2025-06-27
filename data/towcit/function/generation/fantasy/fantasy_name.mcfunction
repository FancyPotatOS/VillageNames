
execute unless data storage towcit:data {generation_type:"towcit:fantasy"} run return 0

# Reset the data
data modify storage towcit:data fantasy.gen set value {val1:"Blanks", val2:"ville",index:0}

# # PART 1
data modify storage towcit:data rng set value {min:0, max:0}

# Get the length of the nm1 - 1 to act as an indices (rng is inclusive)
execute store result score nm1 towcit.master run data get storage towcit:data fantasy.nm1
scoreboard players remove nm1 towcit.master 1

# Choose a random index
execute store result storage towcit:data rng.max int 1 run scoreboard players get nm1 towcit.master
function towcit:util/rng with storage towcit:data rng

# Save the index from rng
data modify storage towcit:data fantasy.gen.index set from storage towcit:data rng

# Get the string at the provided index
data modify storage towcit:data index_at set from storage towcit:data fantasy.nm1
function towcit:util/index_at with storage towcit:data fantasy.gen

# Save the first part
data modify storage towcit:data fantasy.gen.val1 set from storage towcit:data index_at

# # PART 2
data modify storage towcit:data rng set value {min:0, max:0}

# Get the length of the nm2 - 1 to act as an indices (rng is inclusive)
execute store result score nm2 towcit.master run data get storage towcit:data fantasy.nm2
scoreboard players remove nm2 towcit.master 1

# Choose a random index
execute store result storage towcit:data rng.max int 1 run scoreboard players get nm2 towcit.master
function towcit:util/rng with storage towcit:data rng

# Save the index from rng
data modify storage towcit:data fantasy.gen.index set from storage towcit:data rng

# Get the string at the provided index
data modify storage towcit:data index_at set from storage towcit:data fantasy.nm2
function towcit:util/index_at with storage towcit:data fantasy.gen

# Save the second part
data modify storage towcit:data fantasy.gen.val2 set from storage towcit:data index_at

# Concatenate the two parts
function towcit:util/concat with storage towcit:data fantasy.gen

# Save the final town name in the names list
data modify storage towcit:data names append from storage towcit:data concat


#scoreboard players reset nm1 towcit.master
#scoreboard players reset nm2 towcit.master
