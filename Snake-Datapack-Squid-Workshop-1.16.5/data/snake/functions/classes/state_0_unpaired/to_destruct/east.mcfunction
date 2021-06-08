########################################
# Delete snake_center
kill @e[tag=snake_center,distance=..2.1,scores={snake_stt=0}]



########################################
# Delete structure
setblock ~-1 ~0 ~ minecraft:structure_block{mode:"LOAD",rotation:"COUNTERCLOCKWISE_90",posX:-21,posY:-11,posZ:11,name:"snake:destruct"}
setblock ~-1 ~1 ~ minecraft:redstone_block