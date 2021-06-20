########################################
# Tag itself previous body
tag @s remove prev_body

########################################
# Tag this_body
tag @s add this_body

########################################
# Tag its previous body
execute as @e[tag=these_bodies] if score @s snake_buid = @e[tag=this_body,limit=1] snake_buid_prev run tag @s add prev_body



########################################
# Change the rotation of this_body to its previous body
execute at @e[tag=prev_body,limit=1] positioned as @s run tp @s ~ ~ ~ ~ ~

########################################
# Move this_body forward
tp @s ^ ^ ^1



########################################
# Untag this_body
tag @e[tag=this_body] remove this_body



########################################
# Recursion call on its previous body
execute as @e[tag=prev_body,limit=1] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_move