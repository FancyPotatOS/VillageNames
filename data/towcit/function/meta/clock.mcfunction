#
#   Clock
#   
#   Purpose: To update/initialize all villagers, and update state of players, and display necessary data
#
#   Input: None
#

# Update all players
execute as @a run function towcit:player/triggers

# Update all villagers
execute as @e[type=#towcit:villager] at @s run function towcit:villager/check

# Update all players
execute as @a[tag=!towcit.hide_display] at @s run function towcit:player/check

# Reset the clock
scoreboard players set timer towcit.master 0
