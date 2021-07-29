########################################
# Pair it with snake_center
#   by setting its snake_cuid
scoreboard players operation @s snake_cuid = @e[tag=this_center] snake_cuid

########################################
# Set its snake_buid
#   from its UUID
execute store result score @s snake_buid run data get entity @s UUID[0]

########################################
# Set its snake_buid_prev
#   from previous body's UUID
execute store result score @s snake_buid_prev positioned ~ ~1 ~ run data get entity @e[distance=..0.1,limit=1] UUID[0]

########################################
# Set its yaw from snake_center+90
# Set its pitch to -90
execute at @e[tag=this_center,limit=1] positioned as @s run tp @s ~ ~ ~ ~90.0 -90.0

########################################
# Remove tag new_body
tag @s[tag=new_body] remove new_body
