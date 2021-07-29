########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Error msg
execute if entity @s[tag=!state_0] run tellraw @a[distance=..5] {"text":"[Snake Game]: You must run this function when there is no one in the game.","italic":true,"color":"gray"}

########################################
# Change control
scoreboard players set r0 snake_game 2
execute if entity @s[tag=state_0, tag=!bi_dir] run scoreboard players set r0 snake_game 0
execute if entity @s[tag=state_0, tag= bi_dir] run scoreboard players set r0 snake_game 1
execute if score r0 snake_game matches 0 run function snake:classes/to_toggle_control/to_bi_dir
execute if score r0 snake_game matches 1 run function snake:classes/to_toggle_control/to_quad_dir



########################################
# Untag this snake_center
tag @s remove this_center