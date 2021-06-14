########################################
# tp head forward
tp @s ^ ^ ^1

########################################
# Summon a new snake_body
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body","snake_nothead"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}

########################################
# Pair snake_body snake_block entities
execute as @e[tag=new_body] run function snake:classes/state_2_playing/eat_or_move/eat/body_pair
