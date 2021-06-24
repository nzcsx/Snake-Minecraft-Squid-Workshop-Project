########################################
# Replicate the scores from old snake_body
scoreboard players operation @s snake_cuid = @e[tag=this_body] snake_cuid
scoreboard players operation @s snake_buid = @e[tag=this_body] snake_buid
scoreboard players operation @s snake_buid_prev = @e[tag=this_body] snake_buid_prev

########################################
# Replicate the nbts from old snake_body
tp @s ~ ~ ~ ~ ~
data modify entity @s[tag=snake_body] Tags set from entity @e[tag=this_body,limit=1] Tags
tag @s remove this_body

########################################
# Untag new_body
tag @s remove new_body