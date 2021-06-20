########################################
# Run as center depending on direction
execute if block ~ ~ ~ minecraft:command_block[facing=south] positioned ~2 ~ ~-2 as @e[tag=snake_center,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/to_toggle_body_collision/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=west ] positioned ~-2 ~ ~-2 as @e[tag=snake_center,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/to_toggle_body_collision/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=north] positioned ~-2 ~ ~2 as @e[tag=snake_center,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/to_toggle_body_collision/run_as_center
execute if block ~ ~ ~ minecraft:command_block[facing=east ] positioned ~2 ~ ~2 as @e[tag=snake_center,sort=nearest,limit=1,distance=..1] at @s run function snake:classes/to_toggle_body_collision/run_as_center