########################################
# Try repair loose-end player cuid first
execute as @a[distance=..5,scores={snake_cuid=0..}] run function snake:classes/state_0_unpaired/fix_player_cuid/run_as_player



########################################
# Error message:
#   Player already paired
tellraw @a[distance=..5,scores={snake_cuid=0..},sort=nearest,limit=1] {"text":"[Snake Game]: You are already in a snake game. Quit the game first.","italic":true,"color":"gray"}

########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @p {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @p {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check no snake_center in not state_0_unpaired
#   and the direction of the command_block
#   then find the snake_center accordingly
#   then run function accordingly
execute unless entity @a[distance=..5,scores={snake_cuid=0..},sort=nearest,limit=1] if block ~ ~ ~ minecraft:command_block[facing=south] positioned ~ ~ ~20.0 as @e[tag=snake_center,tag=state_0,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/to_s1/run_as_center
execute unless entity @a[distance=..5,scores={snake_cuid=0..},sort=nearest,limit=1] if block ~ ~ ~ minecraft:command_block[facing=west ] positioned ~-20.0 ~ ~ as @e[tag=snake_center,tag=state_0,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/to_s1/run_as_center
execute unless entity @a[distance=..5,scores={snake_cuid=0..},sort=nearest,limit=1] if block ~ ~ ~ minecraft:command_block[facing=north] positioned ~ ~ ~-20.0 as @e[tag=snake_center,tag=state_0,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/to_s1/run_as_center
execute unless entity @a[distance=..5,scores={snake_cuid=0..},sort=nearest,limit=1] if block ~ ~ ~ minecraft:command_block[facing=east ] positioned ~20.0 ~ ~ as @e[tag=snake_center,tag=state_0,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/state_0_unpaired/to_s1/run_as_center