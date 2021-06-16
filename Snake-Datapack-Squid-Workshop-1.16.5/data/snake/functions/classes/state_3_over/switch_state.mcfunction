########################################
# Remove paired snake_body snake_block entities
execute as @e[tag=snake_game,tag=!snake_center] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run kill @s

########################################
# Summon snake_body snake_block entities with tag new_body
execute align y run function snake:classes/state_0_unpaired/to_s1/body_summon

########################################
# Pair snake_body snake_block entities. Set stuffs. Remove tag new_body. 
execute as @e[tag=new_body] run function snake:classes/state_0_unpaired/to_s1/body_pair



########################################
# Reset the timer to 0 (aka to 1 next tick)
data modify entity @s Age set value 0

########################################
# Set the state to ready
tag @s remove state_3
tag @s add state_1

########################################
# Update snake_scr of snake_center to 0
scoreboard players set @s snake_scr 0

########################################
# Update snake_prd of snake_center to 10
scoreboard players set @s snake_prd 10



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
# Setblock unpair button
execute if block ^ ^ ^2.0 command_block[facing=south] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=south]
execute if block ^ ^ ^2.0 command_block[facing=east ] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=east ]
execute if block ^ ^ ^2.0 command_block[facing=north] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=north]
execute if block ^ ^ ^2.0 command_block[facing=west ] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=west ]



########################################
# Undisplay leaderboard by leave team
execute as @a if score @s snake_uid = @s snake_uid run team leave @s



########################################
# Success message
execute as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tellraw @s {"text":"[Snake Game]: Care for another round?","italic":true,"color":"gray"}