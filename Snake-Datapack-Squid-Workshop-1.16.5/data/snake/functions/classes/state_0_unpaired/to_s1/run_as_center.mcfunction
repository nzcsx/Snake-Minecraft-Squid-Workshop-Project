########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Pair the player. Give items.
execute positioned ^ ^ ^-20.0 as @p run function snake:classes/state_0_unpaired/to_s1/player_pair



########################################
# Summon snake_body snake_block entities with tag new_body
execute align y run function snake:classes/state_0_unpaired/to_s1/body_summon
########################################
# Pair snake_body snake_block entities. Set stuffs. Remove tag new_body. 
execute as @e[tag=new_body] run function snake:classes/state_0_unpaired/to_s1/body_pair



########################################
# Set the state to state_1
tag @s remove state_0
tag @s add state_1

########################################
# Update snake_scr of snake_center to 0
scoreboard players set @s snake_scr 0

########################################
# Update snake_prd of snake_center to 10
scoreboard players set @s snake_prd 10



########################################
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_1_ready/to_s0/hit_button",LastOutput:''}



########################################
# Untag this snake_center
tag @s remove this_center
