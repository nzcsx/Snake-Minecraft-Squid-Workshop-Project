########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Check player input at snake_tmr = 1
#   Possible player inputs: 
#       Turn left, up, right, down
execute as @a if score @s snake_cuid = @e[tag=this_center,nbt={Age:1},limit=1] snake_cuid run function snake:classes/state_2_playing/player_input



########################################
# Check food using snake_head at snake_tmr = 1
#   Eat food or
#   Move forward
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,nbt={Age:1},limit=1] snake_cuid at @s positioned ^ ^ ^1 run function snake:classes/state_2_playing/body_eat_move



########################################
# Check if game over
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid positioned as @s run function snake:classes/state_2_playing/head_game_over



########################################
# if ( Age == 20 )
# then reset the timer to 0 (aka to 1 next tick)
execute if data entity @s {Age:20} run data modify entity @s Age set value 0



########################################
# Untag this snake_center
tag @e[tag=this_center] remove this_center
