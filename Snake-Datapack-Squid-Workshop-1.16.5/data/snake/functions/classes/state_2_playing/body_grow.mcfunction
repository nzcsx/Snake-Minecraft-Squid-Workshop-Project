########################################
# tp head forward
tp @s ^ ^ ^1

########################################
# Summon a new snake_body
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["new_body","snake_game","snake_body","snake_nothead","neck"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}

########################################
# Pair snake_body snake_block entities
execute as @e[tag=new_body] run function snake:classes/state_2_playing/body_pair
