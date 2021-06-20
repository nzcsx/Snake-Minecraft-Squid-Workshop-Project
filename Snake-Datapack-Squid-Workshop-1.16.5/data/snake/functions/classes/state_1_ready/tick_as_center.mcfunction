########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Tag paired player
execute positioned ^ ^ ^-20 as @a[distance=..5] if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run tag @s add this_player

########################################
# Check player start
execute as @a[tag=this_player,scores={shift_begin=1},limit=1] run function snake:classes/state_1_ready/to_s2/run_as_player

########################################
# Set to state_0 if paired player does not exist
execute unless entity @a[tag=this_player] run function snake:classes/state_1_ready/to_s0/run_as_center

########################################
# Untag paired player
tag @a[tag=this_player] remove this_player



########################################
# Reset the timer to 0 (aka to 1 next tick)
data modify entity @s Age set value 0



########################################
# Untag this snake_center
tag @s remove this_center
