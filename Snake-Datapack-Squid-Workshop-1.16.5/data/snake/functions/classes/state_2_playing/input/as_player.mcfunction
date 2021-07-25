########################################
# Tag paired snake_head, so lower functions can select it
execute as @e[tag=snake_head] if score @s snake_cuid = @e[tag=this_center,limit=1] snake_cuid run tag @s add this_head


########################################
# Mode
execute if entity @e[tag=this_center,tag=!bi_dir] run function snake:classes/state_2_playing/input/quad_dir/run
execute if entity @e[tag=this_center,tag= bi_dir] run function snake:classes/state_2_playing/input/bi_dir/run

########################################
# Untag unpaired snake_head
tag @e[tag=this_head,limit=1] remove this_head