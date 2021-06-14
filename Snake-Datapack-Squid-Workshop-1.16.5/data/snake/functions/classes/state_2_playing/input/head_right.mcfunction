########################################
# Change dir of snake_head
#   Set the rotation from snake_center
#   Set the yaw from 90 to snake_center
execute as @e[tag=this_head,limit=1] at @e[tag=this_center,limit=1] positioned as @s run tp @s ~ ~ ~ ~90 ~



########################################
# Disable "LEFT" key
replaceitem entity @s hotbar.0 minecraft:lime_banner{ snake_left :0b,display:{Name:'{"text":"LEFT" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"lud"},{Color:15,Pattern:"ld" }]}}
replaceitem entity @s hotbar.1 minecraft:black_banner{snake_up   :1b,display:{Name:'{"text":"UP"   ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hhb"}]}}
replaceitem entity @s hotbar.2 minecraft:black_banner{snake_down :1b,display:{Name:'{"text":"DOWN" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hh" }]}}
replaceitem entity @s hotbar.3 minecraft:lime_banner{ snake_right:1b,display:{Name:'{"text":"RIGHT","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"rd" },{Color:15,Pattern:"rud"}]}}

replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air