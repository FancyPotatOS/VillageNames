#
#   Check Villager Village Tag
#   
#   Purpose: To ensure that every villager has a valid village id, and it matches the other nearby villagers
#
#   Input: None
#


# Provide a villager with a village ID
execute unless entity @s[tag=towcit.villager] run function towcit:villager/get_id

# Tag as 'main' villager
tag @s add towcit.villager.check.temp

# Infect nearby villagers with my tag
execute as @e[type=#towcit:villager,tag=!towcit.villager.check.temp,distance=..50] run scoreboard players operation @s towcit.id = @e[type=#towcit:villager,tag=towcit.villager.check.temp,limit=1] towcit.id

# Remove tag as 'main' villager
tag @s remove towcit.villager.check.temp
