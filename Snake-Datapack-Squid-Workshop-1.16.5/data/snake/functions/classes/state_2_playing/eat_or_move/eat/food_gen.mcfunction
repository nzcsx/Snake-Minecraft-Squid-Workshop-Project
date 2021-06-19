########################################
# Summon entities at allowed spots
function snake:classes/state_2_playing/eat_or_move/eat/food_allowed_spots



########################################
# Summon a food
execute at @e[tag=snake_rand,sort=random,limit=1] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:redstone_block"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_food","new_body"]} 

########################################
# Pair food with snake_center
#   by setting their snake_cuid
scoreboard players operation @e[tag=new_body] snake_cuid = @e[tag=this_center] snake_cuid

########################################
# Remove tag new_body
tag @e[tag=new_body] remove new_body



########################################
# Kill entities at allowed spots
kill @e[tag=snake_rand]