########################################
# Remove all the variables
scoreboard objectives remove snake_dir
scoreboard objectives remove snake_scr
scoreboard objectives remove snake_uid
scoreboard objectives remove snake_stt

########################################
# Remove all snake entities
kill @e[tag=snake]