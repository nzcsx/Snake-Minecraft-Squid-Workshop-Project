summon minecraft:armor_stand ~ ~ ~-2 {Marker:1b, Invisible:0b, Rotation:[90f,0f], Tags:["snake_game", "snake_center", "new_center"]}

scoreboard players set @e[tag=new_center] snake_stt 0
scoreboard players set @e[tag=new_center] snake_uid 0