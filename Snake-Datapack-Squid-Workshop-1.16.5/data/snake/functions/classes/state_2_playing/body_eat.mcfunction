########################################
# Tag this snake_head, so lower functions can select it
tag @s add this_head



########################################
# Kill the food
kill @e[tag=snake_food,distance=..0.1]

########################################
# Grow the snake
execute at @s run function snake:classes/state_2_playing/body_grow

########################################
# Summon new food




########################################
# Untag this this_head
tag @e[tag=this_head] remove this_head



say eat
tag @e[tag=this_center] add pause