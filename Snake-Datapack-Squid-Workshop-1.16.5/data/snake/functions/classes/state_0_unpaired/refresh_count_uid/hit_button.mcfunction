########################################
# Error message
#   Not all snake_center in state 0.
execute if entity @e[tag=snake_center,tag=!state_0] run tellraw @s {"text":"[Snake Game]: In order to reset leaderboard, there must be no players in any snake games.","italic":true,"color":"gray"}

########################################
# Refresh count and uid
execute unless entity @e[tag=snake_center,tag=!state_0] run function snake:classes/state_0_unpaired/refresh_count_uid/run