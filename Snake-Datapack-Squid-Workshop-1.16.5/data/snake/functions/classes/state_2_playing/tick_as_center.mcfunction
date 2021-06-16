########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Check player input at timer = 1
#   Possible player inputs: 
#       Turn left, up, right, down
execute as @a if score @s snake_uid = @e[tag=this_center,nbt={Age:1},limit=1] snake_uid run function snake:classes/state_2_playing/input/as_player



########################################
# Check food using snake_head at timer = 1
#   Eat food or
#   Move forward
execute as @e[tag=snake_head] if score @s snake_uid = @e[tag=this_center,nbt={Age:1},limit=1] snake_uid at @s positioned ^ ^ ^1 run function snake:classes/state_2_playing/eat_or_move/as_head



########################################
# Check if game over
execute as @e[tag=snake_head] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid positioned as @s run function snake:classes/state_2_playing/head_game_over



########################################
# if ( Age == snake_prd )
# then reset the timer to 0 (aka to 1 next tick)
execute store result score r0 snake_game run data get entity @s Age
execute if score r0 snake_game = @s snake_prd run data modify entity @s Age set value 0



########################################
# Untag this snake_center
tag @e[tag=this_center] remove this_center
