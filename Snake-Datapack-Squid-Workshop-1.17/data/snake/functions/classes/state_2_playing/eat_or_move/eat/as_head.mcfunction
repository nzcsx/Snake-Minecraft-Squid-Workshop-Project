########################################
# Kill the food
kill @e[tag=snake_food,distance=..0.1]

########################################
# Play sound
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run playsound entity.item.pickup player @s ^ ^ ^17 0 0.6 0.2



########################################
# Grow at tail
execute as @e[tag=snake_tail] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s run function snake:classes/state_2_playing/eat_or_move/eat/tail_grow

########################################
# Reconstruct body
execute as @e[tag=snake_block] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tag @s add these_blocks
execute as @e[tag=snake_body] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s run function snake:classes/state_2_playing/eat_or_move/eat/body_fresh
kill @e[tag=these_blocks]



########################################
# Summon new food
execute as @e[tag=this_center,limit=1] at @s align y positioned ^ ^ ^0.85 run function snake:classes/state_2_playing/eat_or_move/eat/food_gen



########################################
# Add a score to this_center
# Update snake_prd
execute as @e[tag=this_center] run function snake:classes/state_2_playing/eat_or_move/eat/center_score