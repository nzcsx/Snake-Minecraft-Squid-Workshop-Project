########################################
# Kill the food
kill @e[tag=snake_food,distance=..0.1]

########################################
# Play sound
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run playsound entity.item.pickup player @s ^ ^ ^17 0 0.6 0.2



###############################################################################################################
###############################################################################################################



########################################
# Tag this snake_head, so lower functions can select it
# tag @s add this_head



########################################
# Grow the snake
# execute at @s run function snake:classes/state_2_playing/eat_or_move/eat/body_grow



########################################
# Untag this this_head
# tag @e[tag=this_head] remove this_head



###############################################################################################################
# above is growing at neck
# below is growing at tail
# try comment/uncomment one another to see the difference
###############################################################################################################



########################################
# Tag these_bodies first
execute as @e[tag=snake_body] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tag @s add these_bodies



########################################
# Summon new snake_tail
execute as @e[tag=these_bodies,tag=snake_tail] at @s run function snake:classes/state_2_playing/eat_or_move/eat/tail_create

########################################
# Move forward and
# Leave a dir indicator
execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_forward

########################################
# Update direction and
# Remove a dir indicator
execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_direction

########################################
# Change the old snake_tail
execute as @e[tag=these_bodies,tag=snake_tail] run tag @s remove snake_tail



########################################
# Untag these_bodies
tag @e[tag=these_bodies] remove these_bodies



###############################################################################################################
###############################################################################################################



########################################
# Summon new food
execute as @e[tag=this_center,limit=1] at @s align y positioned ^ ^ ^0.85 run function snake:classes/state_2_playing/eat_or_move/eat/food_gen



########################################
# This part reconstruct the whole snake
#   b/c the new snake_body don't move in sync with
#       the old snake_body unless summoned altogether
execute as @e[tag=snake_block  ] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tag @s add old_block

execute as @e[tag=snake_head   ] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s run function snake:classes/state_2_playing/eat_or_move/eat/head_reconstruct
execute as @e[tag=snake_nothead] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s run function snake:classes/state_2_playing/eat_or_move/eat/nothead_reconstruct

kill @e[tag=old_block]



########################################
# Add a score to this_center
# Update snake_prd
execute as @e[tag=this_center] run function snake:classes/state_2_playing/eat_or_move/eat/center_score