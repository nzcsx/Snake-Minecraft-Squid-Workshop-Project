########################################
# Tag this snake_center with this_center
#   so lower functions can select it
tag @s add this_center



########################################
# Unpair the player. Give items.
execute as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run function snake:classes/state_1_ready/to_s0/player_unpair



########################################
# Remove paired snake_body snake_block entities
execute as @e[tag=snake_body ] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run kill @s
execute as @e[tag=snake_block] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run kill @s



########################################
# Update snake_stt of snake_center to state_0_unpaired
scoreboard players set @s snake_stt 0
########################################
# Update snake_scr of snake_center to 0
scoreboard players set @s snake_scr 0



########################################
# Update this hit button command block
#   to unpair function
data merge block ^ ^ ^-20.0 {Command:"function snake:classes/state_0_unpaired/to_s1/hit_button",LastOutput:''}



########################################
# Untag this snake_center
tag @s remove this_center
