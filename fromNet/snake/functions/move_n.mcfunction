#move snake
execute if entity @s[tag=n] run tp @s ~ ~ ~1

#remove tag
tag @s remove n

#summon dummy armor stand
execute unless entity @s[tag=tail] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["snake","temp","n"]}