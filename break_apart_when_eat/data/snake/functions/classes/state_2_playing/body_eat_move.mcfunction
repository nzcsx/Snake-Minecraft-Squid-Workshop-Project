########################################
# If no food, move

########################################
# Tag these_bodies first
execute unless entity @e[tag=snake_food,distance=..0.1] as @e[tag=snake_body] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add these_bodies

########################################
# Bug: snake breaks apart!
# execute as @e[tag=these_bodies] run function snake:classes/state_2_playing/body_move

########################################
# Move forward and
# Leave a dir indicator
#execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/body_forward

########################################
# Update direction and
# Remove a dir indicator
#execute as @e[tag=these_bodies] at @s run function snake:classes/state_2_playing/body_direction

########################################
# Untag these_bodies
tag @e[tag=these_bodies] remove these_bodies



########################################
# If food, add length
execute if entity @e[tag=snake_food,distance=..0.1] run function snake:classes/state_2_playing/body_eat