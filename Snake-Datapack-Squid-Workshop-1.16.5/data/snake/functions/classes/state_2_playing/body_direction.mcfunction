########################################
# Update direction to snake_dir indicator
execute at @e[tag=snake_dir,distance=..0.1] run tp @s ~ ~ ~ ~ ~

########################################
# Remove a dir indicator
kill @e[tag=snake_dir,distance=..0.1]