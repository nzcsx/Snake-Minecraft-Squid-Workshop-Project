###movement###
#me obrigaram a fazer isso - UP DOWN LEFT RIGHT  STOP
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] unless score $old_dir snake matches 2 run scoreboard players set $dir snake 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] unless score $old_dir snake matches 1 run scoreboard players set $dir snake 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] unless score $old_dir snake matches 4 run scoreboard players set $dir snake 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] unless score $old_dir snake matches 3 run scoreboard players set $dir snake 4

execute if entity @s[nbt={SelectedItem:{id:"minecraft:barrier"}}] run function snake:game_over

#get selected hotbar slot
execute store result score $inv snake run data get entity @s SelectedItemSlot

#reset dir if 4+
execute if score $inv snake matches 4.. run scoreboard players set $dir snake 0

###movement loop###
#add
scoreboard players add $loop snake 1

#move
execute if score $loop snake matches 1 as @e[tag=snake,tag=head,limit=1,sort=nearest] at @s if score $dir snake matches 1..4 run function snake:move

#reset loop
execute if score $loop snake matches 3.. run scoreboard players set $loop snake 0

###score###
#score
execute at @e[tag=snake,tag=head,limit=1,sort=nearest] positioned ~ ~-1.5 ~ if entity @e[tag=snake_apple,tag=!unit,distance=..0.1] run function snake:score

#fix apple pos - must be before the summon
execute as @e[tag=snake_apple,tag=unit,limit=1,sort=nearest] at @s run function snake:apple_fix

#summon apple
execute unless entity @e[tag=snake_apple,limit=1,sort=nearest] at @e[tag=snake_center,limit=1,sort=nearest] run function snake:apple

#show score
title @s actionbar [{"text":"Score: ","color":"yellow"},{"score":{"name":"$score","objective":"snake"},"color":"#ffaaff","bold":true}]

###death###
execute at @e[tag=snake,tag=head,limit=1,sort=nearest] if block ~ ~-1 ~ minecraft:spruce_wood run tag @s add game_over
execute at @e[tag=snake,tag=head,limit=1,sort=nearest] if entity @e[tag=snake,tag=body,distance=..0.1] run tag @s add game_over

###game over###
execute if entity @s[tag=game_over] run function snake:game_over