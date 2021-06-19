########################################
# This is for preventing loose-end pairing or double pairing

########################################
# Tag this_player
tag @s add this_player



########################################
# If paired snake_center with snake_puid nonexistent
#   Reset player snake_cuid
execute as @e[tag=snake_center] if score @s snake_puid = @e[tag=this_player,limit=1] snake_puid run tag @s add this_center
execute unless entity @e[tag=this_center] run scoreboard players reset @s snake_cuid
tag @e[tag=this_center] remove this_center



########################################
# Untag this_player
tag @s remove this_player