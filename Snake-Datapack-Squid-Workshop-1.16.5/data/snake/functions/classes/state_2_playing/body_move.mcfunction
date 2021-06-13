########################################
# Move forward and
# Leave a dir indicator
execute at @s run function snake:classes/state_2_playing/body_forward

execute as @e[tag=snake_dir] run say dir1

########################################
# Update direction and
# Remove a dir indicator
execute at @s run function snake:classes/state_2_playing/body_direction

execute as @e[tag=snake_dir] run say dir2



say body