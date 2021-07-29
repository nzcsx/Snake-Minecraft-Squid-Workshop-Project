########################################
# If no food, move
execute unless entity @e[tag=snake_food,distance=..0.1] run function snake:classes/state_2_playing/eat_or_move/move/as_head


########################################
# If food, add length
execute if entity @e[tag=snake_food,distance=..0.1] run function snake:classes/state_2_playing/eat_or_move/eat/as_head