#
#   Title: Main Triggers
#   
#   Purpose: To detect any changes to player triggers
#
#   Input: None
#
#   Context: Player
#

scoreboard players enable @s village_name_display

execute if score @s village_name_display matches 1.. run function towcit:triggers/village_name_display



