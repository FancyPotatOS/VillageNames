#
#   Title: Player Check
#   
#   Purpose: To update the state and display of the player
#
#   Input: None
#
#   Context: Player
#

tag @s add towcit.player.check.temp

# If tagged as in a village, but no villagers nearby, then remove the tag
execute if entity @s[tag=towcit.player.in_village] unless entity @e[type=#towcit:villager,distance=..50] run function towcit:player/exited_village

# If not tagged as in a village, and villagers nearby, then add the tag
execute if entity @s[tag=!towcit.player.in_village] if entity @e[type=#towcit:villager,distance=..40] run function towcit:player/entered_village

tag @s remove towcit.player.check.temp
