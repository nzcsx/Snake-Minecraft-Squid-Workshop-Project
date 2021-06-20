"snake_tail",

########################################
# Pair new_body with snake_center
#   by setting snake_cuid
scoreboard players operation @s snake_cuid = @e[tag=this_center] snake_cuid

########################################
# Set its snake_buid
#   from its UUID
execute store result score @s snake_buid run data get entity @s UUID[0]

########################################
# Set its snake_buid_prev
#   from previous body's UUID
execute store result score @s snake_buid_prev run data get entity @e[tag=these_bodies,tag=snake_tail,limit=1] UUID[0]


########################################
# Set snake_buid to old tail's UUID
execute store result score @e[tag=new_body] snake_buid run data get entity @s UUID[0]


########################################
# Set new_body rotations to old snake_tail
tp @e[tag=new_body] ~ ~ ~ ~ ~

########################################
# Remove tag new_body
tag @e[tag=new_body] remove new_body