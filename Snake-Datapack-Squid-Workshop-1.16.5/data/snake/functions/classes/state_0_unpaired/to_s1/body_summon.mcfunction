########################################
# Summon three snake_body entities
#   and three snake_block entities
#   Tag them with new_body
summon minecraft:armor_stand ~ ~-0 ~ {Marker:1b,Invisible:0b,Tags:["new_body","snake_game","snake_body","snake_head"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:slime_block"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ~ ~-1 ~ {Marker:1b,Invisible:0b,Tags:["new_body","snake_game","snake_body"             ],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ~ ~-2 ~ {Marker:1b,Invisible:0b,Tags:["new_body","snake_game","snake_body"             ],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}
summon minecraft:armor_stand ~ ~-3 ~ {Marker:1b,Invisible:0b,Tags:["new_body","snake_game","snake_body","snake_tail"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}