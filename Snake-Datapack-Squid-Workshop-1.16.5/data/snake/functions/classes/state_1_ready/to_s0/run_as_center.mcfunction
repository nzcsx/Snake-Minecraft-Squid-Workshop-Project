########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Unpair the player. Give items.
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run function snake:classes/state_1_ready/to_s0/player_unpair

########################################
# Resetting snake_puid
scoreboard players reset @s snake_puid

########################################
# Update snake_scr of snake_center to 0
scoreboard players set @s snake_scr 0

########################################
# Update state of snake_center to state_0_unpaired
tag @s remove state_1
tag @s add state_0



########################################
# Remove paired snake_body snake_block snake_food entities
execute as @e[tag=snake_game,tag=!snake_center] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run kill @s



########################################
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_0_unpaired/to_s1/hit_button",LastOutput:''}



########################################
# Untag this snake_center
tag @s remove this_center