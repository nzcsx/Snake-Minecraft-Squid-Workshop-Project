#remove snake and apple
execute at @e[tag=snake_center,limit=1,sort=nearest] run kill @e[tag=snake]

#reset vars
scoreboard players set $score snake 0
scoreboard players set $old_dir snake 1

#summon apple
execute at @e[tag=snake_center,limit=1,sort=nearest] run function snake:apple

#summon snake head
execute at @e[tag=snake_center,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["snake","head"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake","snake_block"]}]}

#summon snake body
execute at @e[tag=snake_center,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~-1 {Marker:1b,Invisible:1b,Tags:["snake","body","neck","n"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake","snake_block"]}]}
execute at @e[tag=snake_center,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~-2 {Marker:1b,Invisible:1b,Tags:["snake","body","n"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake","snake_block"]}]}
execute at @e[tag=snake_center,limit=1,sort=nearest] run summon minecraft:armor_stand ~ ~ ~-3 {Marker:1b,Invisible:1b,Tags:["snake","body","tail","n"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake","snake_block"]}]}