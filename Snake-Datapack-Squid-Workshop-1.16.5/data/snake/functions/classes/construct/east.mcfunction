########################################
# Summon a new snake_center
#   Set its snake_stt to state_0_unpaired
#   Set its snake_uid to snake_game of snake_cnt
summon minecraft:armor_stand ~ ~ ~-2 {Marker:1b, Invisible:0b, Rotation:[90f,0f], Tags:["snake_game", "snake_center", "new_center"],CustomName:'{"text":"center"}'}

scoreboard players set @e[tag=new_center] snake_stt 0

scoreboard players operation @e[tag=new_center] snake_uid = snake_cnt snake_game
scoreboard players add snake_cnt snake_game 1

tag @e[tag=new_center] remove new_center



# New structure
setblock ~1 ~0 ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-21,posY:-11,posZ:11,name:"snake:construct"}
setblock ~1 ~1 ~ minecraft:redstone_block