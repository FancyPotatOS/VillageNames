#
#   Title: Entered Village
#   
#   Purpose: To set the player state to in village state, and display the appropriate text
#
#   Input: None
#
#   Context: Player
#

# Tag player as in the village
tag @s add towcit.player.in_village

# Reset the display data that will be used in macros
data modify storage towcit:data display set value {index:0, title:""}

# # Get the village name
# Get the index of a nearby villager's village ID
execute store result storage towcit:data display.index int 1 run scoreboard players get @e[type=#towcit:villager,sort=nearest,limit=1] towcit.id
# Get the names of all villages
data modify storage towcit:data index_at set from storage towcit:data names
# Get the appropriate village name
function towcit:util/index_at with storage towcit:data display
# Store the result into the 'title' data
data modify storage towcit:data display.title set from storage towcit:data index_at

# Display the village name
function towcit:util/title with storage towcit:data display

function #towcit:entered_village
