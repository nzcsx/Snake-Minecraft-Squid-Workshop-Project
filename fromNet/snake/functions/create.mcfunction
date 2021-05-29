#summon center armor stand
execute align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invisible:1b,Tags:["snake_center"]}

#summon grid
execute at @e[tag=snake_center] run setblock ~ ~-1 ~ minecraft:structure_block{mode:"LOAD",posX:-20,posY:0,posZ:-22,sizeX:33,sizeY:1,sizeZ:33,name:"snake:grid"}
execute at @e[tag=snake_center] run setblock ~1 ~-1 ~ minecraft:redstone_block

#tp self to start
tp @s ~7 ~ ~-13