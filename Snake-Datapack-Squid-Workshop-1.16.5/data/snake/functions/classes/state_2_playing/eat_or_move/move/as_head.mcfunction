########################################
# Tag these_bodies first
execute as @e[tag=snake_body] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add these_bodies



########################################
# Move forward and
# Leave a dir indicator
execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_forward

########################################
# Update direction and
# Remove a dir indicator
execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_direction



########################################
# Untag these_bodies
tag @e[tag=these_bodies] remove these_bodies
