########################################
# Summon a new snake_body with new_body
summon minecraft:armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["new_body","snake_game","snake_body"],Passengers:[{"id":"minecraft:falling_block",BlockState:{Name:"minecraft:lime_wool"  },NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,Tags:["snake_game","snake_block","new_body"]}]}

########################################
# Replicate the nbts from old snake_body
tp @e[tag=new_body] ~ ~ ~ ~ ~
scoreboard players operation @e[tag=new_body] snake_uid = @e[tag=this_center] snake_uid
data modify entity @e[tag=new_body,tag=snake_body,limit=1] Tags set from entity @s Tags

########################################
# Kill old snake_body
kill @s

########################################
# Untag new_body
execute as @e[tag=new_body] run tag @s remove new_body
