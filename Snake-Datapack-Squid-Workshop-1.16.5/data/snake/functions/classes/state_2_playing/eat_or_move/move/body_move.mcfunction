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
tp @s[tag=snake_head] ^ ^ ^1
tp @s[tag=!snake_head] @e[tag=prev_body,limit=1]



########################################
# Untag this_body
tag @e[tag=this_body] remove this_body



########################################
# Recursion call on its previous body
execute as @e[tag=prev_body,limit=1] at @s run function snake:classes/state_2_playing/eat_or_move/move/body_move