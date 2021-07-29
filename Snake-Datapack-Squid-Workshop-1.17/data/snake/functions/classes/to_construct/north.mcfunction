########################################
# Summon a new snake_center
summon minecraft:area_effect_cloud ~ ~ ~2 {Duration:101, Rotation:[180f,0f], Tags:["snake_game", "snake_center", "new_center", "state_0"]}

########################################
# Set its state to state_0_unpaired
tag @e[tag=new_center] add state_0

########################################
# Set its snake_cuid to snake_game of count
# count ++
scoreboard players operation @e[tag=new_center] snake_cuid = count snake_game
scoreboard players add count snake_game 1

########################################
# Untag new_center
tag @e[tag=new_center] remove new_center



########################################
# New structure
setblock ~ ~0 ~1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:11,posY:-11,posZ:21,name:"snake:construct"}
setblock ~ ~1 ~1 minecraft:redstone_block



########################################
# Success message
tellraw @p {"text":"[Snake Game]: Constructed a snake game facing north.","italic":true,"color":"gray"}