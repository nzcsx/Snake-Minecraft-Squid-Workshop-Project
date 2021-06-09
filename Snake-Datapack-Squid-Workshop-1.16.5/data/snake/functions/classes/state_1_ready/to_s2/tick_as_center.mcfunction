########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Check player input
#   Possible player inputs: 
#       Start
execute as @a[scores={shift_begin=1}] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run function snake:classes/state_1_ready/to_s2/player_input



########################################
# Untag this snake_center
tag @s remove this_center
