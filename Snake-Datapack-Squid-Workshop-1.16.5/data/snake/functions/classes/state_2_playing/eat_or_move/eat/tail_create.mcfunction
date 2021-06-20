########################################
# Summon new_body
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body","snake_tail","snake_nothead"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}

########################################
# Pair new_body with snake_center
#   by setting snake_cuid
scoreboard players operation @e[tag=new_body] snake_cuid = @e[tag=this_center] snake_cuid

########################################
# Set snake_buid to old tail's UUID
execute store result score @e[tag=new_body] snake_buid run data get entity @s UUID[0]


########################################
# Set new_body rotations to old snake_tail
tp @e[tag=new_body] ~ ~ ~ ~ ~

########################################
# Remove tag new_body
tag @e[tag=new_body] remove new_body