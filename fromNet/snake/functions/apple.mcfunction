#summon
summon minecraft:armor_stand ~ ~-1.5 ~ {ArmorItems:[{},{},{},{id:"minecraft:redstone_block",Count:1b}],Marker:1b,Invisible:1b,Tags:["snake","snake_apple","unit"]}

#spread apple
spreadplayers ~ ~ 0 10 false @e[tag=snake_apple,tag=unit]