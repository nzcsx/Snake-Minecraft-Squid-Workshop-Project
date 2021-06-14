########################################
# Set personal high score
scoreboard players operation @s snake_scr > @e[tag=this_center,limit=1] snake_scr

########################################
# Set server high score
scoreboard players operation 1st snake_game > @e[tag=this_center,limit=1] snake_scr

########################################
# Success message
tellraw @a ["",{"text":"[Snake Game]: Game Over.\n[Snake Game]: Your score is ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=this_center]","objective":"snake_scr"},"italic":true,"color":"gray"},{"text":" !\n[Snake Game]: Your personal high score is ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"snake_scr"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]



########################################
# Set leaderboard
scoreboard players operation @s --Leaderboard-- = @s snake_scr

########################################
# Display leaderboard
scoreboard objectives setdisplay sidebar --Leaderboard--