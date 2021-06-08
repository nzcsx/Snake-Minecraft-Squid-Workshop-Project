########################################
# Delete snake_center
kill @e[tag=snake_center,distance=..2.1,scores={snake_stt=0}]



########################################
# Delete structure
setblock ~ ~0 ~1 minecraft:structure_block{mode:"LOAD",rotation:"CLOCKWISE_180",posX:11,posY:-11,posZ:21,name:"snake:destruct"}
setblock ~ ~1 ~1 minecraft:redstone_block
