########################################
# Pair them with snake_center
#   by setting their snake_uid
scoreboard players operation @s snake_uid = @e[tag=this_center] snake_uid

########################################
# Set their yaw from snake_center
# Set their pitch to -90
execute at @e[tag=this_center] positioned as @s run tp @s ~ ~ ~ ~ -90.0

########################################
# Remove tag new_body
tag @s remove new_body
