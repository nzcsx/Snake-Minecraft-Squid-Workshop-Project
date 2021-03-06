########################################
# Execute as each snake_center game
# if unpaired
execute as @e[tag=snake_center, tag=state_0] at @s run data modify entity @s Age set value 0

########################################
# Execute as each snake_center game
# if ready
execute as @e[tag=snake_center, tag=state_1] at @s run function snake:classes/state_1_ready/tick_as_center

########################################
# Execute as each snake_center game
# if playing
execute as @e[tag=snake_center, tag=state_2] at @s run function snake:classes/state_2_playing/tick_as_center

########################################
# Execute as each snake_center game
# if game over
execute as @e[tag=snake_center, tag=state_3] at @s run function snake:classes/state_3_over/tick_as_center