# New center
summon minecraft:armor_stand ~ ~ ~-2 {Marker:1b, Invisible:0b, Rotation:[0f,0f], Tags:["snake_game", "snake_center", "new_center"]}

scoreboard players set @e[tag=new_center] snake_stt 0
scoreboard players set @e[tag=new_center] snake_uid 0

tag @e[tag=new_center] remove new_center



# New structure
setblock ~ ~0 ~-1 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-11,posY:-11,posZ:-21,name:"snake:construct"}
setblock ~ ~1 ~-1 minecraft:redstone_block