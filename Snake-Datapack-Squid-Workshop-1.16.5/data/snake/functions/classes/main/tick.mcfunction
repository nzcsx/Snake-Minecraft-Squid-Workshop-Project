########################################
# Execute as each snake_center game
# if unpaired
execute as @e[tag=snake_center, scores={snake_stt=0}] run say unpaired

########################################
# Execute as each snake_center game
# if ready
execute as @e[tag=snake_center, scores={snake_stt=1}] run say ready

########################################
# Execute as each snake_center game
# if playing
execute as @e[tag=snake_center, scores={snake_stt=2}] run function snake:classes/state_2_playing/tick_as_center
