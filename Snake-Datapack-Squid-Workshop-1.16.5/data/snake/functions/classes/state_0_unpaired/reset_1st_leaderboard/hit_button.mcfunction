########################################
# Error message
#   Not all snake_center in state 0.
execute if entity @e[tag=snake_center,tag=!state_0] run tellraw @s {"text":"[Snake Game]: In order to refresh uid, there must be no players in any snake games.","italic":true,"color":"gray"}

########################################
# Reset 1st and leaderboard
execute unless entity @e[tag=snake_center,tag=!state_0] run function snake:classes/state_0_unpaired/reset_1st_leaderboard/run