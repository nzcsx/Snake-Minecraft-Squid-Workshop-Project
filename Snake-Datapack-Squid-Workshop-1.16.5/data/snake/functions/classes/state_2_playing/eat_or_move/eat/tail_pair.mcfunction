########################################
# Set the scores
scoreboard players operation @s snake_cuid = @e[tag=this_tail] snake_cuid
execute store result score @s snake_buid run data get entity @s UUID[0]
scoreboard players operation @s snake_buid_prev = @e[tag=this_tail] snake_buid

########################################
# Replicate the nbts from old snake_body
tp @s ~ ~ ~ ~ ~
data modify entity @s[tag=snake_body] Tags set from entity @e[tag=this_tail,limit=1] Tags
tag @s remove this_tail

########################################
# Untag snake_tail on old tail
tag @e[tag=this_tail] remove snake_tail

########################################
# Untag new_body on new tail
tag @s remove new_body