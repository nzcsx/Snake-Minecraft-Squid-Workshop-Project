########################################
# Summon three snake_body entities
#   and three snake_block entities
#   Tag them with new_body
summon minecraft:armor_stand ^ ^-0 ^0.85 {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body","snake_head"                ],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ^ ^-1 ^0.85 {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body",             "snake_nothead"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ^ ^-2 ^0.85 {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body",             "snake_nothead"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ^ ^-3 ^0.85 {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body","snake_tail","snake_nothead"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}



########################################
# Summon new food
summon minecraft:falling_block ^ ^3 ^0.85 {BlockState:{Name:"minecraft:redstone_block"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_food","new_body"]}