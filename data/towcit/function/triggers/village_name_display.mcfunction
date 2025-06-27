#
#   Title: Village Name Display Trigger
#   
#   Purpose: Toggles the player display tag
#
#   Input: None
#
#   Context: Player
#

# If hiding the display, tag as temp
execute if entity @s[tag=towcit.hide_display] run tag @s add towcit.hide_display.temp

# Add/remove hide display tag
execute if entity @s[tag=towcit.hide_display.temp] run tag @s remove towcit.hide_display
execute if entity @s[tag=towcit.hide_display.temp] run tellraw @s {"text":"Enabled Village Name Display","italic":true,"color":"green","click_event":{"action":"run_command","command":"/trigger village_name_display"},"hover_event":{"action":"show_text","value":[{"text":"Click to toggle","italic":true,"color":"gray"}]}}
# If removing the in_village tag, then be sure to assume no longer in a village, to allow the village title to come back up immediately when re-enabling
execute if entity @s[tag=towcit.hide_display.temp] run tag @s remove towcit.player.in_village
execute unless entity @s[tag=towcit.hide_display.temp] run tag @s add towcit.hide_display
execute unless entity @s[tag=towcit.hide_display.temp] run tellraw @s {"text":"Disabled Village Name Display","italic":true,"color":"red","click_event":{"action":"run_command","command":"/trigger village_name_display"},"hover_event":{"action":"show_text","value":[{"text":"Click to toggle","italic":true,"color":"gray"}]}}

# Remove temp tag
tag @s remove towcit.hide_display.temp

# Reset trigger scoreboard
scoreboard players set @s village_name_display 0


