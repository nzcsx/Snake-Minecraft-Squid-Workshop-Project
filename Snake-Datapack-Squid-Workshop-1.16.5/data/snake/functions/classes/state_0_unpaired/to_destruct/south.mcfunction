########################################
# Delete snake_center
kill @s



########################################
# Delete structure
setblock ~ ~0 ~-1 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-11,posY:-11,posZ:-21,name:"snake:destruct"}
setblock ~ ~1 ~-1 minecraft:redstone_block