########################################
# Error message:
#   snake_center not in state_0_unpaired
execute unless score @e[tag=snake_center,distance=..2,limit=1] snake_stt matches 0 run tellraw @p {"text":"[Snake Game] Cannot destruct. Player must quit the game first. ","italic":true,"color":"gray"}

########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @p {"text":"[Snake Game] You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @p {"text":"[Snake Game] You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check the direction of the command_block
#   and run function accordingly
execute if score @e[tag=snake_center,distance=..2,limit=1] snake_stt matches 0 if block ~ ~ ~ minecraft:command_block[facing=south] run function snake:classes/destruct/south
execute if score @e[tag=snake_center,distance=..2,limit=1] snake_stt matches 0 if block ~ ~ ~ minecraft:command_block[facing=west ] run function snake:classes/destruct/west
execute if score @e[tag=snake_center,distance=..2,limit=1] snake_stt matches 0 if block ~ ~ ~ minecraft:command_block[facing=north] run function snake:classes/destruct/north
execute if score @e[tag=snake_center,distance=..2,limit=1] snake_stt matches 0 if block ~ ~ ~ minecraft:command_block[facing=east ] run function snake:classes/destruct/east