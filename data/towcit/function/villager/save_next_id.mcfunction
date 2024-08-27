#
#   Save Next Village ID
#   
#   Purpose: To set this as the next_id, and increment by one
#
#   Input: None
#

scoreboard players operation @s towcit.id = next_id towcit.master

scoreboard players add next_id towcit.master 1


