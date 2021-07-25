########################################
# Tag snake_center bi_dir
tag @s add bi_dir

########################################
# Change paired player items
execute as @a if score @s snake_puid = @e[tag=this_center,limit=1] snake_puid run function snake:classes/state_0_unpaired/to_s1/player_items_2

########################################
# Success message
tellraw @a[distance=..5] {"text":"[Snake Game]: Toggled this game board to 2-key control","italic":true,"color":"gray"}
