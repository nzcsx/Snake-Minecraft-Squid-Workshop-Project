########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Pair the player. Give items.
execute positioned ^ ^ ^-20.0 as @p run function snake:classes/state_0_unpaired/player_pair



########################################
# Summon snake_body entities with tag new_body
execute align y run function snake:classes/state_0_unpaired/body_summon
########################################
# Pair snake_body entities. Set stuffs. Remove tag new_body. 
execute as @e[tag=new_body] run function snake:classes/state_0_unpaired/body_pair



########################################
# Update snake_stt of snake_center to state_1_ready
scoreboard players set @s snake_stt 1
########################################
# Update snake_scr of snake_center to 0
scoreboard players set @s snake_scr 0



########################################
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_1_ready/hit_button_s0",LastOutput:''}



########################################
# Untag this snake_center
tag @s remove this_center
