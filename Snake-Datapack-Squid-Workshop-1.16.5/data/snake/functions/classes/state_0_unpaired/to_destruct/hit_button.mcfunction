########################################
# Error message:
#   snake_center exists && not in state_0_unpaired
execute if entity @e[tag=snake_center,distance=..2.1,scores={snake_stt=1..}] run tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: Cannot destruct. Player must quit the game first. ","italic":true,"color":"gray"}

########################################
# Error message:
#   Incorrect command_block direction
execute if block ~ ~ ~ minecraft:command_block[facing=up   ] run tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}
execute if block ~ ~ ~ minecraft:command_block[facing=down ] run tellraw @a[distance=..5,sort=nearest,limit=1] {"text":"[Snake Game]: You must run this function in a command block facing south, west, east or north.","italic":true,"color":"gray"}

########################################
# Check no snake_center in not state_0_unpaired
#   and the direction of the command_block
#   then run function accordingly
execute unless entity @e[tag=snake_center,distance=..2.1,limit=1,scores={snake_stt=1..}] if block ~ ~ ~ minecraft:command_block[facing=south] run function snake:classes/state_0_unpaired/to_destruct/south
execute unless entity @e[tag=snake_center,distance=..2.1,limit=1,scores={snake_stt=1..}] if block ~ ~ ~ minecraft:command_block[facing=west ] run function snake:classes/state_0_unpaired/to_destruct/west
execute unless entity @e[tag=snake_center,distance=..2.1,limit=1,scores={snake_stt=1..}] if block ~ ~ ~ minecraft:command_block[facing=north] run function snake:classes/state_0_unpaired/to_destruct/north
execute unless entity @e[tag=snake_center,distance=..2.1,limit=1,scores={snake_stt=1..}] if block ~ ~ ~ minecraft:command_block[facing=east ] run function snake:classes/state_0_unpaired/to_destruct/east