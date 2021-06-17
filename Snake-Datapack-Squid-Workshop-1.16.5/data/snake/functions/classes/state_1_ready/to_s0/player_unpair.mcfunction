########################################
# Unpair the player with snake_center
#   by resetting their snake_uid
scoreboard players reset @s snake_uid

########################################
# Give the player items
replaceitem entity @s hotbar.0 minecraft:air
replaceitem entity @s hotbar.1 minecraft:air
replaceitem entity @s hotbar.2 minecraft:air
replaceitem entity @s hotbar.3 minecraft:air

replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air

########################################
# Success message
tellraw @p {"text":"[Snake Game]: Goodbye.","italic":true,"color":"gray"}