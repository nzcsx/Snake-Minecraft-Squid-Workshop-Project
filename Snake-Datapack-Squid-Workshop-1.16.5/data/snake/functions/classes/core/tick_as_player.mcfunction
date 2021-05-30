########################################
# Check player inputs and set snake_head direction
execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 2 run scoreboard players set @s snake_dir 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 1 run scoreboard players set @s snake_dir 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 4 run scoreboard players set @s snake_dir 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 3 run scoreboard players set @s snake_dir 4
