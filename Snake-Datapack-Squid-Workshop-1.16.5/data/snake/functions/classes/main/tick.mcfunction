########################################
# Execute as each snake_center game
# if unpaired
execute as @e[tag=snake_center, scores={snake_stt=0}] run function snake:classes/state_0_unpaired/tick_as_center

########################################
# Execute as each snake_center game
# if ready
#execute as @e[tag=snake_center, scores={snake_stt=1}] run say 1ready

########################################
# Execute as each snake_center game
# if playing
#execute as @e[tag=snake_center, scores={snake_stt=2}] run say 2playing

########################################
# Execute as each snake_center game
# if game over
#execute as @e[tag=snake_center, scores={snake_stt=3}] run say 3over
