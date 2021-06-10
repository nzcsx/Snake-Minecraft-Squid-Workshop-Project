########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center

########################################
# Check player input
#   Possible player inputs: 
#       Turn left, up, right, down
# execute as @a if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run function snake:classes/state_2_playing/player_input

########################################
# Move the snake forward at snake_tmr=0
execute as @e[tag=snake_body] if score @s snake_uid = @e[tag=this_center,scores={snake_tmr=0},limit=1] snake_uid run function snake:classes/state_2_playing/body_move

########################################
# snake_tmr ++
scoreboard players add @s snake_tmr 1
########################################
# if ( snake_tmr == 20 )
# then reset the timer to 0
execute if score @s snake_tmr matches 20.. run scoreboard players set @s snake_tmr 0

########################################
# Untag this snake_center
tag @e[tag=this_center] remove this_center
