########################################
# Pair the player with snake_center
#   by setting player's snake_cuid and
#   by setting center's snake_puid
scoreboard players operation @s snake_cuid = @e[tag=this_center] snake_cuid
execute store result score @s snake_puid run data get entity @s UUID[0]
scoreboard players operation @e[tag=this_center] snake_puid = @s snake_puid

########################################
# Give the player items
replaceitem entity @s hotbar.0 minecraft:lime_banner{ snake_left :1b,display:{Name:'{"text":"LEFT" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"lud"},{Color:15,Pattern:"ld" }]}}
replaceitem entity @s hotbar.1 minecraft:black_banner{snake_up   :1b,display:{Name:'{"text":"UP"   ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hhb"}]}}
replaceitem entity @s hotbar.2 minecraft:black_banner{snake_down :0b,display:{Name:'{"text":"DOWN" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hh" }]}}
replaceitem entity @s hotbar.3 minecraft:lime_banner{ snake_right:1b,display:{Name:'{"text":"RIGHT","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"rd" },{Color:15,Pattern:"rud"}]}}

replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air

########################################
# Success message
tellraw @s {"text":"[Snake Game]: Welcome to the snake game. Press shift to start.","italic":true,"color":"gray"}