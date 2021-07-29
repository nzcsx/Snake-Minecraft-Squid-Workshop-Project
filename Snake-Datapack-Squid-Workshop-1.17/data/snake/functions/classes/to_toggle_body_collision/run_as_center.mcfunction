########################################
# Toggle body collision free hack
execute if entity @s[tag=!collision_free] run scoreboard players set r0 snake_game 0
execute if entity @s[tag= collision_free] run scoreboard players set r0 snake_game 1
execute if score r0 snake_game matches 0 run function snake:classes/to_toggle_body_collision/to_enable
execute if score r0 snake_game matches 1 run function snake:classes/to_toggle_body_collision/to_disable