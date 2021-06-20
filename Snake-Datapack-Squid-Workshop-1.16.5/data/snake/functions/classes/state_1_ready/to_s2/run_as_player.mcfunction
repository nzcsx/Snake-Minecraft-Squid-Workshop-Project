########################################
# Update state of snake_center to playing
tag @e[tag=this_center,limit=1] remove state_1
tag @e[tag=this_center,limit=1] add state_2



########################################
# Undisplay leaderboard by leave team
team leave @s



########################################
# Give the player items
execute if entity @e[tag=this_center,tag=!bi_dir] run function snake:classes/state_0_unpaired/to_s1/player_items_4
execute if entity @e[tag=this_center,tag= bi_dir] run function snake:classes/state_0_unpaired/to_s1/player_items_2



########################################
# Remove unpair button
setblock ^ ^1.0 ^-20.0 air