########################################
# Tag this snake_center, so lower functions can select it
tag @s add this_center

########################################
# Tag paired player
execute positioned ^ ^ ^-20 as @a[distance=..5] if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run tag @s add this_player



########################################
# Check player inputs
#   Possible player inputs: 
#       Turn left, up, right, down
execute as @a[tag=this_player] run function snake:classes/state_2_playing/input/as_player



########################################
# Check food using snake_head
#   Eat food or
#   Move forward
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid at @s positioned ^ ^ ^1 run function snake:classes/state_2_playing/eat_or_move/as_head



########################################
# Display score in actionbar 
#   might block the view
# execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run title @s actionbar ["",{"text":"Current score: "},{"score":{"name":"@e[tag=this_center,limit=1]","objective":"snake_scr"}}]



########################################
# Check if game over
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid positioned as @s run function snake:classes/state_2_playing/head_game_over



########################################
# Set to state_0 if paired player does not exist
execute unless entity @a[tag=this_player] run function snake:classes/state_1_ready/to_s0/run_as_center



########################################
# Untag paired player
tag @a[tag=this_player] remove this_player

########################################
# Untag this snake_center
tag @e[tag=this_center] remove this_center