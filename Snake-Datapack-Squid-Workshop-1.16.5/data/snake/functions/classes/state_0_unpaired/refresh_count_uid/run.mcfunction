########################################
# Reset total count of the snake_game
scoreboard players set count snake_game 0

########################################
# Reassign snake_uid
execute as @e[tag=snake_center] run function snake:classes/state_0_unpaired/refresh_count_uid/run_as_center