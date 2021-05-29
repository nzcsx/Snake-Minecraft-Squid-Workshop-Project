#move snake
execute if entity @s[tag=e] run tp @s ~-1 ~ ~

#remove tag
tag @s remove e

#summon dummy armor stand
execute unless entity @s[tag=tail] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["snake","temp","e"]}