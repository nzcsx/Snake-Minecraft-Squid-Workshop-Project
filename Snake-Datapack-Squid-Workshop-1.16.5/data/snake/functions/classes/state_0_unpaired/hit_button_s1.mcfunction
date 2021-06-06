########################################
# Check the direction of the command_block
#   and find the snake_center accordingly
execute unless score @p snake_uid matches 0.. if block ~ ~ ~ minecraft:command_block[facing=south] positioned ~ ~ ~20.0 as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/run_as_center
execute unless score @p snake_uid matches 0.. if block ~ ~ ~ minecraft:command_block[facing=west ] positioned ~-20.0 ~ ~ as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/run_as_center
execute unless score @p snake_uid matches 0.. if block ~ ~ ~ minecraft:command_block[facing=north] positioned ~ ~ ~-20.0 as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/run_as_center
execute unless score @p snake_uid matches 0.. if block ~ ~ ~ minecraft:command_block[facing=east ] positioned ~20.0 ~ ~ as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/run_as_center

########################################
# Error message:
#   Player already paired
execute if score @p snake_uid matches 0.. run tellraw @p {"text":"[Snake Game] You are already in a snake game. Quit the game first.","italic":true,"color":"gray"}

########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @p {"text":"[Snake Game] You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @p {"text":"[Snake Game] You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}