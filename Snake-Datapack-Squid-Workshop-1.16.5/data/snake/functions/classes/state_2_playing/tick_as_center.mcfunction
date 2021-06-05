########################################
# Tag this snake_center, in case lower functions gonna use it 
tag @s add snake_this

########################################
# Check player inputs
#   Possible player inputs: 
#       1. Turn left, up, right, down
#       2. Stop game
execute as @a if score @s snake_uid = @e[tag=snake_this,limit=1] snake_uid run function snake:classes/state_playing/check_player_move

execute if entity @s[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 2 run scoreboard players set @s snake_dir 1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 1 run scoreboard players set @s snake_dir 2
execute if entity @s[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 4 run scoreboard players set @s snake_dir 3
execute if entity @s[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] as @e[tag=snake_head] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid unless score @s snake_dir matches 3 run scoreboard players set @s snake_dir 4







########################################
# Untag this snake_center
tag @s remove snake_this
