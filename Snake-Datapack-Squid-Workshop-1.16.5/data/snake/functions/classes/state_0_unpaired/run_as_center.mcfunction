########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Pair the player. Give items.
execute as @p run function snake:classes/state_0_unpaired/player_pair



########################################
# Summon snake_body entities with tag new_body
execute at @s align z run function snake:classes/state_0_unpaired/body_summon
########################################
# Pair snake_body entities. Set Rotations. Remove tag new_body. 
execute as @e[tag=new_body] run function snake:classes/state_0_unpaired/body_pair



########################################
# Update snake_stt of snake_center to state_1_ready
scoreboard players set @s snake_stt 1



########################################
# Untag this snake_center
tag @s remove this_center
