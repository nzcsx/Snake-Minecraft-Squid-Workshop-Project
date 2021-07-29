########################################
# Tag old tail this_tail
tag @s add this_tail



########################################
# Move the whole snake starting from tail
function snake:classes/state_2_playing/eat_or_move/move/as_head

########################################
# Summon new snake_tail
function snake:classes/state_2_playing/eat_or_move/eat/tail_summon

########################################
# Pair new snake_tail
execute as @e[tag=new_body] run function snake:classes/state_2_playing/eat_or_move/eat/tail_pair



########################################
# Untag this_tail
tag @e[tag=this_tail] remove this_tail