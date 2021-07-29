########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @a[distance=..5] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @a[distance=..5] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check the direction of the command_block
#   then run function accordingly
execute if block ~ ~ ~ minecraft:command_block[facing=south] run function snake:classes/to_construct/south
execute if block ~ ~ ~ minecraft:command_block[facing=west ] run function snake:classes/to_construct/west
execute if block ~ ~ ~ minecraft:command_block[facing=north] run function snake:classes/to_construct/north
execute if block ~ ~ ~ minecraft:command_block[facing=east ] run function snake:classes/to_construct/east

########################################
# Refresh uid
function snake:classes/state_0_unpaired/refresh_count_uid/hit_button