########################################
# If no food, move
execute unless entity @e[tag=snake_food,distance=..0.1] as @e[tag=snake_body] if score @s snake_uid = @e[tag=this_center,nbt={Age:1},limit=1] snake_uid run function snake:classes/state_2_playing/body_move



########################################
# If food, add length
execute if entity @e[tag=snake_food,distance=..0.1] run function snake:classes/state_2_playing/body_eat



say =======
execute as @e[tag=snake_dir] run say ||  dir!  ||