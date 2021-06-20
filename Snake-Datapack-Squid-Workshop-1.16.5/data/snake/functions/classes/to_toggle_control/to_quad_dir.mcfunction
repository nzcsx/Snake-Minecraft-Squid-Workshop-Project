########################################
# Untag snake_center bi_dir
tag @s remove bi_dir

########################################
# Change paired player items
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run function snake:classes/state_0_unpaired/to_s1/player_items_4


########################################
# Success message
tellraw @a[distance=..5] {"text":"[Snake Game]: Toggled this game board to quad-directional control","italic":true,"color":"gray"}