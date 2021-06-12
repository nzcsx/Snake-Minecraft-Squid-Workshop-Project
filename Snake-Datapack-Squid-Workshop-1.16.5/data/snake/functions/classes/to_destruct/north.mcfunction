########################################
# Delete paired entities and
# Unpair player
execute positioned ~ ~ ~2 as @e[tag=snake_center,distance=..0.1] run function snake:classes/to_destruct/destruct_as_center



########################################
# Delete structure
setblock ~ ~0 ~1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:11,posY:-11,posZ:21,name:"snake:destruct"}
setblock ~ ~1 ~1 minecraft:redstone_block
