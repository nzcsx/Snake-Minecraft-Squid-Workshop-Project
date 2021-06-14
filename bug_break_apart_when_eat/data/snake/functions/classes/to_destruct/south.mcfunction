########################################
# Delete paired entities and
# Unpair player
execute positioned ~ ~ ~-2 as @e[tag=snake_center,distance=..0.1] run function snake:classes/to_destruct/destruct_as_center

########################################
# Delete entities within the space
execute positioned ~-11.5 ~-11.5 ~-22.5 run kill @e[tag=snake_game,dx=23,dy=23,dz=23]

########################################
# Delete structure
setblock ~ ~0 ~-1 minecraft:structure_block{mode:"LOAD",rotation:"NONE",posX:-11,posY:-11,posZ:-21,name:"snake:destruct"}
setblock ~ ~1 ~-1 minecraft:redstone_block

########################################
# Success message
tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: Destructed a snake game facing south.","italic":true,"color":"gray"}