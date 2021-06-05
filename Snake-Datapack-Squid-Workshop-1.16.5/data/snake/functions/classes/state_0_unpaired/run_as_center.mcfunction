########################################
# Tag this snake_center, so lower functions can select it
tag @s add snake_this

########################################
# Pair the player. Give player items
execute as @p run function snake:classes/state_0_unpaired/player_pair

########################################
# Update snake_stt of snake_center to state_1_ready
scoreboard players set @s snake_stt 1

########################################
# Untag this snake_center
tag @s remove snake_this
