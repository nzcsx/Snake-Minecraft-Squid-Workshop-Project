########################################
# Pair the player with snake_center
#   by setting player's snake_cuid and
#   by setting center's snake_puid
scoreboard players operation @s snake_cuid = @e[tag=this_center] snake_cuid
execute store result score @s snake_puid run data get entity @s UUID[0]
scoreboard players operation @e[tag=this_center] snake_puid = @s snake_puid



########################################
# Add player to leaderboard team
#   will be removed from team in to_s2
team join snake_game @s

########################################
# Display leaderboard for all in the team
scoreboard objectives setdisplay sidebar.team.white --Leaderboard--



########################################
# Give the player items
execute if entity @e[tag=this_center,tag=!bi_dir] run function snake:classes/state_0_unpaired/to_s1/player_items_4
execute if entity @e[tag=this_center,tag= bi_dir] run function snake:classes/state_0_unpaired/to_s1/player_items_2

########################################
# Success message
tellraw @s {"text":"[Snake Game]: Welcome to the snake game. Press shift to start.","italic":true,"color":"gray"}