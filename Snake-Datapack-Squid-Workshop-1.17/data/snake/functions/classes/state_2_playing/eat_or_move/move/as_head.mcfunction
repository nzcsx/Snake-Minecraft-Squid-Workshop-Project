########################################
# Tag these_bodies first
execute as @e[tag=snake_body] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tag @s add these_bodies



########################################
# Move the whole snake starting from tail
execute as @e[tag=these_bodies,tag=snake_tail] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_move



########################################
# Untag these_bodies
tag @e[tag=these_bodies] remove these_bodies
