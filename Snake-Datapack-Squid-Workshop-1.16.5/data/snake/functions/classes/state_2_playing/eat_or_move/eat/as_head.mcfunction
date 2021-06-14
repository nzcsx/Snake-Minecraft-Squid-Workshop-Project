########################################
# Tag this snake_head, so lower functions can select it
# tag @s add this_head



########################################
# Kill the food
# kill @e[tag=snake_food,distance=..0.1]

########################################
# Grow the snake
# execute at @s run function snake:classes/state_2_playing/eat_or_move/eat/body_grow

########################################
# Summon new food
# execute as @e[tag=this_center,limit=1] at @s align y positioned ^ ^ ^0.85 run function snake:classes/state_2_playing/eat_or_move/eat/food_gen



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
execute as @e[tag=snake_body] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add these_bodies



########################################
# Kill the food
kill @e[tag=snake_food,distance=..0.1]



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
# Summon new food
execute as @e[tag=this_center,limit=1] at @s align y positioned ^ ^ ^0.85 run function snake:classes/state_2_playing/eat_or_move/eat/food_gen



########################################
# Untag these_bodies
tag @e[tag=these_bodies] remove these_bodies



###############################################################################################################
###############################################################################################################



########################################
# This part reconstruct the whole snake
#   b/c the new snake_body don't move in sync with
#       the old snake_body unless summoned altogether
execute as @e[tag=snake_block  ] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add old_block

execute as @e[tag=snake_head   ] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid at @s run function snake:classes/state_2_playing/eat_or_move/eat/head_reconstruct
execute as @e[tag=snake_nothead] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid at @s run function snake:classes/state_2_playing/eat_or_move/eat/nothead_reconstruct

kill @e[tag=old_block]