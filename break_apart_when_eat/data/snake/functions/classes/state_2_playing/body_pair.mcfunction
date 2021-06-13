########################################
# Pair them with snake_center
#   by setting their snake_uid
scoreboard players operation @s snake_uid = @e[tag=this_center] snake_uid

########################################
# Set the rotation to snake_head
execute at @e[tag=this_head,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

########################################
# Remove tag new_body
tag @s remove new_body