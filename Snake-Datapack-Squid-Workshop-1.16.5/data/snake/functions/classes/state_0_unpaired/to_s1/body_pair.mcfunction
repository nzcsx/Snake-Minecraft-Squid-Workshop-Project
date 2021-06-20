########################################
# Pair them with snake_center
#   by setting their snake_cuid
scoreboard players operation @s snake_cuid = @e[tag=this_center] snake_cuid

########################################
# Set their yaw from snake_center+90
# Set their pitch to -90
execute at @e[tag=this_center,limit=1] positioned as @s run tp @s ~ ~ ~ ~90.0 -90.0

########################################
# Remove tag new_body
tag @s remove new_body
