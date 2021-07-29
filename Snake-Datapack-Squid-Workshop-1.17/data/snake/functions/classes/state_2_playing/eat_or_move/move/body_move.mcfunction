########################################
# Untag itself previous body
tag @s remove prev_body

########################################
# Tag this_body
tag @s add this_body

########################################
# Tag its previous body
execute as @e[tag=these_bodies] if score @s snake_buid = @e[tag=this_body,limit=1] snake_buid_prev run tag @s add prev_body



########################################
# Move this_body forward
execute store result score r0 snake_game run data get entity @s[tag=snake_head] Rotation[1]
tp @s[tag=snake_head] ^ ^ ^1
execute store result entity @s[tag=snake_head] Rotation[1] float 5 run scoreboard players get r0 snake_game

tp @s[tag=!snake_head] @e[tag=prev_body,limit=1]



########################################
# Untag this_body
tag @e[tag=this_body] remove this_body



########################################
# Recursion call on its previous body
execute as @e[tag=prev_body,limit=1] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_move