#
#   Get Village ID
#   
#   Purpose: To copy a nearby villager's village ID, or generate a new one if no villager has one yet
#
#   Input: None
#


# Tag myself so I don't find in later queries
tag @s add towcit.villager.get_id.current

# Set score as nearest villager
scoreboard players operation @s towcit.id = @e[type=#towcit:villager,tag=!towcit.villager.get_id.current,distance=..50,scores={towcit.id=0..},sort=nearest,limit=1] towcit.id

execute unless score @s towcit.id matches 0.. at @s run function towcit:villager/generate_id

# Remove the tag
tag @s remove towcit.villager.get_id.current
