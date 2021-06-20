########################################
# Remove paired snake_body snake_block entities
execute as @e[tag=snake_game,tag=!snake_center] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run kill @s

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
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_1_ready/to_s0/hit_button",LastOutput:''}

########################################
# Setblock unpair button
execute if block ^ ^ ^2.0 command_block[facing=south] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=south]
execute if block ^ ^ ^2.0 command_block[facing=east ] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=east ]
execute if block ^ ^ ^2.0 command_block[facing=north] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=north]
execute if block ^ ^ ^2.0 command_block[facing=west ] run setblock ^ ^1.0 ^-20.0 stone_button[face=floor,facing=west ]



########################################
# Success message
execute as @a if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tellraw @s {"text":"[Snake Game]: Care for another round?","italic":true,"color":"gray"}