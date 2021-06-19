########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Check player input at timer = 1
#   Possible player inputs: 
#       Turn left, up, right, down
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run function snake:classes/state_2_playing/input/as_player



########################################
# Check food using snake_head at timer = 1
#   Eat food or
#   Move forward
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s positioned ^ ^ ^1 run function snake:classes/state_2_playing/eat_or_move/as_head



########################################
# Check if game over
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid positioned as @s run function snake:classes/state_2_playing/head_game_over



########################################
# Untag this snake_center
tag @e[tag=this_center] remove this_center