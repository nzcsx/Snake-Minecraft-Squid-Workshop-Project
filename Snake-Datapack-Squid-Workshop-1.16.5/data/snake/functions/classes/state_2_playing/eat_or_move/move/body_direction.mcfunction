########################################
# Tag this_body first
tag @s add this_body



########################################
# Update direction to snake_dir indicator
execute as @e[tag=snake_dir,distance=..0.1] if score @s snake_buid = @e[tag=this_body,limit=1] snake_buid at @s run tp @e[tag=this_body,limit=1] ~ ~ ~ ~ ~

########################################
# Remove a dir indicator
execute as @e[tag=snake_dir,distance=..0.1] if score @s snake_buid = @e[tag=this_body,limit=1] snake_buid run kill @s



########################################
# Untag this_body
tag @s remove this_body