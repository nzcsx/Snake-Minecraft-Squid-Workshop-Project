#######################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Unpair the player. Give items.
execute as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run function snake:classes/state_1_ready/to_s0/player_unpair



########################################
# Remove paired snake_game entities
execute as @e[tag=snake_game] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run kill @s



########################################
# Untag this snake_center
tag @s remove this_center