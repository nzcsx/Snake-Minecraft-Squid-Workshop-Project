########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @p {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @p {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check the direction of the command_block
#   and run function accordingly
execute if block ~ ~ ~ minecraft:command_block[facing=south] run function snake:classes/state_._null/to_construct/south
execute if block ~ ~ ~ minecraft:command_block[facing=west ] run function snake:classes/state_._null/to_construct/west
execute if block ~ ~ ~ minecraft:command_block[facing=north] run function snake:classes/state_._null/to_construct/north
execute if block ~ ~ ~ minecraft:command_block[facing=east ] run function snake:classes/state_._null/to_construct/east