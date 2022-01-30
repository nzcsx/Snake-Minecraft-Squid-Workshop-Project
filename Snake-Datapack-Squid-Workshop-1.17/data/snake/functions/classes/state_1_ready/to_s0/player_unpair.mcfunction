########################################
# Unpair the player with snake_center
#   by resetting player's snake_cuid
scoreboard players reset @s snake_cuid



########################################
# Undisplay leaderboard by leave team
team leave @s



########################################
# Give the player items
item replace entity @s hotbar.0 with minecraft:air
item replace entity @s hotbar.1 with minecraft:air
item replace entity @s hotbar.2 with minecraft:air
item replace entity @s hotbar.3 with minecraft:air

item replace entity @s hotbar.4 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air
item replace entity @s hotbar.7 with minecraft:air
item replace entity @s hotbar.8 with minecraft:air

########################################
# Success message
tellraw @s {"text":"[Snake Game]: Goodbye.","italic":true,"color":"gray"}