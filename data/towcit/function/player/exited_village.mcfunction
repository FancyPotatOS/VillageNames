#
#   Title: Exited Village
#   
#   Purpose: To reset the player state from in village state
#
#   Input: None
#
#   Context: Player
#

# Tag player as no longer in the village
tag @s remove towcit.player.in_village

# Run tagged functions
function #towcit:exited_village
