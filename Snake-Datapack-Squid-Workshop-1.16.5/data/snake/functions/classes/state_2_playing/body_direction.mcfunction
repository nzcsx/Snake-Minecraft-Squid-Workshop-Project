########################################
# Update direction to snake_dir indicator
execute at @e[tag=snake_dir,distance=..0.1] run tp @s ~ ~ ~ ~ ~

########################################
# Remove a dir indicator
execute as @e[tag=snake_dir,distance=..0.1] run say im killed
kill @e[tag=snake_dir,distance=..0.1]