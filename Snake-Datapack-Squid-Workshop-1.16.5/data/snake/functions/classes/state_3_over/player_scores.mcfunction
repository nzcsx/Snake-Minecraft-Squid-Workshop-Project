########################################
# Set snake_game 1st
#   from snake_scr of snake_center
#   It will be at least 0.
scoreboard players operation 1st snake_game > @e[tag=this_center,limit=1] snake_scr



########################################
# Set --Leaderboard-- of this player
#   from snake_scr of snake_center
#   It will be at least 0.
scoreboard players operation @s --Leaderboard-- > @e[tag=this_center,limit=1] snake_scr

########################################
# Add player to leaderboard team
#   will be removed from team in switch_state
team join snake_game @s

########################################
# Display leaderboard for all in the team
scoreboard objectives setdisplay sidebar.team.green --Leaderboard--



########################################
# Success messages

########################################
# Game over
tellraw @s {"text":"[Snake Game]: Game over.","italic":true,"color":"gray"}

########################################
# Your score
tellraw @s ["",{"text":"[Snake Game]: Your score is ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=this_center,limit=1]","objective":"snake_scr"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]

########################################
# Your high score
tellraw @s ["",{"text":"[Snake Game]: Your high score is ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"--Leaderboard--"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]

########################################
# Server high score
tellraw @s ["",{"text":"[Snake Game]: Server high score is ","italic":true,"color":"gray"},{"score":{"name":"1st","objective":"snake_game"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]



########################################
# If personal high score == 0
#   reset to null
execute unless score @s --Leaderboard-- matches 1.. run scoreboard players reset @s --Leaderboard--
