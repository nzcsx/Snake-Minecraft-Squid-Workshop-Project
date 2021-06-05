########################################
# Pair the player with snake_center
scoreboard players operation @s snake_uid = @e[tag=snake_this] snake_uid

########################################
# Give the player items
replaceitem entity @s hotbar.0 minecraft:black_banner{display:{Name:'{"text":"UP","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5,Pattern:"mr"},{Color:15,Pattern:"hhb"}]}}
replaceitem entity @s hotbar.1 minecraft:black_banner{display:{Name:'{"text":"DOWN","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5,Pattern:"mr"},{Color:15,Pattern:"hh"}]}}
replaceitem entity @s hotbar.2 minecraft:lime_banner{display:{Name:'{"text":"LEFT","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"lud"},{Color:15,Pattern:"ld"}]}}
replaceitem entity @s hotbar.3 minecraft:lime_banner{display:{Name:'{"text":"RIGHT","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"rd"},{Color:15,Pattern:"rud"}]}}

replaceitem entity @s hotbar.8 minecraft:barrier{display:{Name:'{"text":"EXIT","italic":false,"bold":true}'}}