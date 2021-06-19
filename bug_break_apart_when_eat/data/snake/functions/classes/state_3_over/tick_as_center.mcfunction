########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center



########################################
# Display game related info
execute if data entity @s {Age:1  } as @a if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run function snake:classes/state_3_over/display_scores



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