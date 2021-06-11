########################################
# Execute as each snake_center game
# if unpaired
# N/A

########################################
# Execute as each snake_center game
# if ready
execute as @e[tag=snake_center, scores={snake_stt=1}] at @s run function snake:classes/state_1_ready/to_s2/tick_as_center

########################################
# Execute as each snake_center game
# if playing
execute as @e[tag=snake_center, scores={snake_stt=2}] at @s run function snake:classes/state_2_playing/tick_as_center

########################################
# Execute as each snake_center game
# if game over
#execute as @e[tag=snake_center, scores={snake_stt=3}] run say 3over
