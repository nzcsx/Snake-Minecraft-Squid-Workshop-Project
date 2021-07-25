########################################
# Change dir of snake_head
#   Set the rotation from snake_center
#   Set the yaw from -90 to snake_center
execute store result score r0 snake_game run data get entity @e[tag=this_head,limit=1] Rotation[1]
scoreboard players set r1 snake_game 90
scoreboard players operation r0 snake_game -= r1 snake_game
execute store result entity @e[tag=this_head,limit=1] Rotation[1] float 5 run scoreboard players get r0 snake_game


########################################
# Replace player items
execute if entity @s[nbt={SelectedItemSlot:0}] run function snake:classes/state_2_playing/input/bi_dir/slot_0
execute if entity @s[nbt={SelectedItemSlot:1}] run function snake:classes/state_2_playing/input/bi_dir/slot_1
execute if entity @s[nbt={SelectedItemSlot:2}] run function snake:classes/state_2_playing/input/bi_dir/slot_2
execute if entity @s[nbt={SelectedItemSlot:3}] run function snake:classes/state_2_playing/input/bi_dir/slot_3
execute if entity @s[nbt={SelectedItemSlot:4}] run function snake:classes/state_2_playing/input/bi_dir/slot_4
execute if entity @s[nbt={SelectedItemSlot:5}] run function snake:classes/state_2_playing/input/bi_dir/slot_5
execute if entity @s[nbt={SelectedItemSlot:6}] run function snake:classes/state_2_playing/input/bi_dir/slot_6
execute if entity @s[nbt={SelectedItemSlot:7}] run function snake:classes/state_2_playing/input/bi_dir/slot_7
execute if entity @s[nbt={SelectedItemSlot:8}] run function snake:classes/state_2_playing/input/bi_dir/slot_8