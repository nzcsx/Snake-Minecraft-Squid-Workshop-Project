########################################
# Tag old body this_body
tag @s add this_body



########################################
# Summon a new snake_body with new_body
function snake:classes/state_2_playing/eat_or_move/eat/body_summon

########################################
# Pair the new snake_body
execute as @e[tag=new_body] run function snake:classes/state_2_playing/eat_or_move/eat/body_pair



########################################
# Kill old snake_body
kill @e[tag=this_body]