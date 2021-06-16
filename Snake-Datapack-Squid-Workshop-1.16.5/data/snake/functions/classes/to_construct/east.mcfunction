########################################
# Summon a new snake_center
summon minecraft:area_effect_cloud ~-2 ~ ~ {Duration:101, Rotation:[-90f,0f], Tags:["snake_game", "snake_center", "new_center", "state_0"]}

########################################
# Set its state to state_0_unpaired
tag @e[tag=new_center] add state_0

########################################
# Set its snake_uid to snake_game of count
# count ++
scoreboard players operation @e[tag=new_center] snake_uid = count snake_game
scoreboard players add count snake_game 1

########################################
# Untag new_center
tag @e[tag=new_center] remove new_center



########################################
# New structure
setblock ~-1 ~0 ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-21,posY:-11,posZ:11,name:"snake:construct"}
setblock ~-1 ~1 ~ minecraft:redstone_block



########################################
# Success message
tellraw @p {"text":"[Snake Game]: Constructed a snake game facing east.","italic":true,"color":"gray"}