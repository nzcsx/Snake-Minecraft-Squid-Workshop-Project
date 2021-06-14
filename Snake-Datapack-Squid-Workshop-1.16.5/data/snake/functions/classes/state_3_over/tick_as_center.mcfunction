########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Update personal high score
#   Display score of this round
#   Display personal high score
# Update leaderboard
#   Display leaderboard
execute if data entity @s {Age:1  } as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run function snake:classes/state_3_over/player_scores



########################################
# Switch to ready state
execute if data entity @s {Age:60} run function snake:classes/state_3_over/switch_state



########################################
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_1_ready/to_s0/hit_button",LastOutput:''}



########################################
# Untag this snake_center
tag @s remove this_center