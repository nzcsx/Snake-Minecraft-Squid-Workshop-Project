########################################
# Delete paired entities and
# Unpair player
execute positioned ~-2 ~ ~ as @e[tag=snake_center,distance=..0.1] run function snake:classes/to_destruct/destruct_as_center



########################################
# Delete structure
setblock ~-1 ~0 ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-21,posY:-11,posZ:11,name:"snake:destruct"}
setblock ~-1 ~1 ~ minecraft:redstone_block