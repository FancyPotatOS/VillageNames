#
#   Generate Village Name
#   
#   Purpose: To generate a new village name, by using the same logic as from https://www.fantasynamegenerators.com/fantasy-town-names.php
#
#   Input: None
#


# Choose a generation type
# # Set default
data modify storage towcit:data generation_type set from storage towcit:data generation_types[0]
# # Get length
execute store result score temp.generation_types.length towcit.master run data get storage towcit:data generation_types
scoreboard players remove temp.generation_types.length towcit.master 1

data modify storage towcit:data macro set value {}
# Get RNG max
execute store result storage towcit:data macro.max int 1 run scoreboard players get temp.generation_types.length towcit.master
# Get RNG min
data modify storage towcit:data macro.min set value 0

# RNG call
function towcit:util/rng with storage towcit:data macro

# Override index if max is 0, since range 0..0 is invalid
execute if score temp.generation_types.length towcit.master matches 0 run data modify storage towcit:data rng set value 0

# Get index values
data modify storage towcit:data macro.index set from storage towcit:data rng
data modify storage towcit:data index_at set from storage towcit:data generation_types

# Get generation type
function towcit:util/index_at with storage towcit:data macro

# Set chosen type
data modify storage towcit:data generation_type set from storage towcit:data index_at

# Call the generate name function
function #towcit:generate_name

