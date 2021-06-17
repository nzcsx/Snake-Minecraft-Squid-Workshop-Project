########################################
# If this_center is not paired
#   Unpair this_player
execute if entity @s[tag=state_0 ] as @a[tag=this_player] run function snake:classes/state_1_ready/to_s0/player_unpair

########################################
# If this_center is paired
#   Unpair all the other players paired to it
execute if entity @s[tag=!state_0] as @a if score @s snake_uid = @a[tag=this_player,limit=1] snake_uid run scoreboard players reset @s snake_uid