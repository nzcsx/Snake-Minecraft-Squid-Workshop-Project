########################################
# Add a score to this_center
scoreboard players add @s snake_scr 1



########################################
# Update snake_prd

########################################
# r1 = snake_src / 3
scoreboard players set r0 snake_game 3
scoreboard players operation r1 snake_game = @s snake_scr
scoreboard players operation r1 snake_game /= r0 snake_game

########################################
# snake_prd = 10 - r1
scoreboard players set @s snake_prd 10
scoreboard players operation @s snake_prd -= r1 snake_game

########################################
# snake_prd = max( snake_prd , 4 )
scoreboard players set r0 snake_game 4
scoreboard players operation @s snake_prd > r0 snake_game