########################################
# This is for preventing loose-end pairing or double pairing

########################################
# Tag this_player
tag @s add this_player



########################################
# Setting player's snake_puid
execute store result score @s snake_puid run data get entity @s UUID[0]



########################################
# If paired snake_center with snake_puid nonexistent
#   Reset player snake_cuid
execute as @e[tag=snake_center] if score @s snake_puid = @e[tag=this_player,limit=1] snake_puid run tag @s add this_center
execute unless entity @e[tag=this_center] run function snake:classes/state_1_ready/to_s0/player_unpair
tag @e[tag=this_center] remove this_center



########################################
# Untag this_player
tag @s remove this_player