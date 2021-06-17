########################################
# This is for preventing loose-end pairing or double pairing

########################################
# Tag this_player
tag @s add this_player



########################################
# Check for corresponding snake_center
execute as @e[tag=snake_center] if score @s snake_uid = @e[tag=this_player,limit=1] snake_uid run function snake:classes/to_fix_player_uid/center_states 



########################################
# Untag this_player
tag @s remove this_player