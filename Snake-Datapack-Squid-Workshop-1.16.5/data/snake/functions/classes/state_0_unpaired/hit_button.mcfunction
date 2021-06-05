execute if block ~ ~ ~ minecraft:command_block[facing=south] positioned ~ ~ ~-20 as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance..10] positioned ~ ~ ~20 run function snake:classes/state_0_unpaired/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=west ] positioned ~20 ~ ~ as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance..10] positioned ~-20 ~ ~ run function snake:classes/state_0_unpaired/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=north] positioned ~ ~ ~20 as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance..10] positioned ~ ~ ~-20 run function snake:classes/state_0_unpaired/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=east ] positioned ~-20 ~ ~ as @e[tag=snake_center,scores={snake_stt=0},sort=nearest,limit=1,distance..10] positioned ~20 ~ ~ run function snake:classes/state_0_unpaired/run_as_center

#say button_hit
