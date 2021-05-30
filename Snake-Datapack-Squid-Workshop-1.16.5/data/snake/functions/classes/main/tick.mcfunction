########################################
# Check if someone playing by checking
# if snake_uid of player == snake_uid of center
execute at @e[tag=snake_center] as @a if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid run function snake:classes/core/tick_as_player