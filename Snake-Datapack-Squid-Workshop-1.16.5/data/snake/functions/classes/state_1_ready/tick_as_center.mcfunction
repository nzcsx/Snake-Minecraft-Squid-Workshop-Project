########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Tag paired player
execute as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add this_player

########################################
# Check player start
execute if score @a[tag=this_player,limit=1] shift_begin matches 1 run function snake:classes/state_1_ready/to_s2/run_as_center

########################################
# Automatic unpair if paired player does not exist
execute unless entity @a[tag=new_player] run function snake:classes/state_1_ready/to_s0/run_as_center

########################################
# Untag paired player
tag @a[tag=new_player] remove this_player



########################################
# Reset the timer to 0 (aka to 1 next tick)
data modify entity @s Age set value 0



########################################
# Untag this snake_center
tag @s remove this_center
