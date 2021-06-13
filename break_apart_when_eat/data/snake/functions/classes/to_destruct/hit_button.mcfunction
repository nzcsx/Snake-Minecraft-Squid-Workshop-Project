########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check no snake_center in not state_0_unpaired
#   and the direction of the command_block
#   then run function accordingly
execute if block ~ ~ ~ minecraft:command_block[facing=south] run function snake:classes/to_destruct/south
execute if block ~ ~ ~ minecraft:command_block[facing=west ] run function snake:classes/to_destruct/west
execute if block ~ ~ ~ minecraft:command_block[facing=north] run function snake:classes/to_destruct/north
execute if block ~ ~ ~ minecraft:command_block[facing=east ] run function snake:classes/to_destruct/east