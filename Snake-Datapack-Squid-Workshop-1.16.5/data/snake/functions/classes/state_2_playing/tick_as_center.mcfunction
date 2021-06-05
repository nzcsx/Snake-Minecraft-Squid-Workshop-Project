########################################
# Tag this snake_center, so lower functions can select it
tag @s add snake_this

########################################
# Check player input
#   Possible player inputs: 
#       Turn left, up, right, down
execute as @a if score @s snake_uid = @e[tag=snake_this,limit=1] snake_uid run function snake:classes/state_2_playing/player_input

########################################
# Move the snake forward



########################################
# Untag this snake_center
tag @e[tag=snake_this] remove snake_this
