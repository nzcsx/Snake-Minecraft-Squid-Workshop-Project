########################################
# Summon a new snake_center
#   Set its snake_stt to state_0_unpaired
#   Set its snake_uid to snake_game of snake_cnt
summon minecraft:area_effect_cloud ~ ~ ~2 {Duration:101, Rotation:[180f,0f], Tags:["snake_game", "snake_center", "new_center", "state_0"]}

scoreboard players set @e[tag=new_center] snake_stt 0

scoreboard players operation @e[tag=new_center] snake_uid = snake_cnt snake_game
scoreboard players add snake_cnt snake_game 1

tag @e[tag=new_center] remove new_center



########################################
# New structure
setblock ~ ~0 ~1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:11,posY:-11,posZ:21,name:"snake:construct"}
setblock ~ ~1 ~1 minecraft:redstone_block



########################################
# Success message
tellraw @p {"text":"[Snake Game]: New snake game facing north constructed.","italic":true,"color":"gray"}