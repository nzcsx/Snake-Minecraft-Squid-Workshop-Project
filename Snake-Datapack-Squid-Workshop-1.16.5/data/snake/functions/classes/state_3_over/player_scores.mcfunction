########################################
# Set snake_game 1st
#   from snake_scr of snake_center
#   It will be at least 0.
scoreboard players operation 1st snake_game > @e[tag=this_center,limit=1] snake_scr



########################################
# Set --Leaderboard-- of this player
#   from snake_scr of snake_center
#   It will be at least 0.
scoreboard players operation @s --Leaderboard-- > @e[tag=this_center,limit=1] snake_scr

########################################
# Add player to leaderboard team
#   will be removed from team in switch_state
team join snake_game @s

########################################
# Display leaderboard for all in the team
scoreboard objectives setdisplay sidebar.team.white --Leaderboard--



########################################
# Success messages

########################################
# Game over
tellraw @s {"text":"[Snake Game]: Game over.","italic":true,"color":"gray"}

########################################
# Your score
tellraw @s ["",{"text":"[Snake Game]: Your score is ","italic":true,"color":"gray"},{"score":{"name":"@e[tag=this_center,limit=1]","objective":"snake_scr"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]

########################################
# Your high score
tellraw @s ["",{"text":"[Snake Game]: Your high score is ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"--Leaderboard--"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]

########################################
# Server high score
tellraw @s ["",{"text":"[Snake Game]: Server high score is ","italic":true,"color":"gray"},{"score":{"name":"1st","objective":"snake_game"},"italic":true,"color":"gray"},{"text":" !","italic":true,"color":"gray"}]



########################################
# If personal high score == 0
#   reset to null
execute unless score @s --Leaderboard-- matches 1.. run scoreboard players reset @s --Leaderboard--



########################################
# Give the player items
replaceitem entity @s hotbar.0 minecraft:lime_banner{ snake_left :1b,display:{Name:'{"text":"LEFT" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"lud"},{Color:15,Pattern:"ld" }]}}
replaceitem entity @s hotbar.1 minecraft:black_banner{snake_up   :1b,display:{Name:'{"text":"UP"   ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hhb"}]}}
replaceitem entity @s hotbar.2 minecraft:black_banner{snake_down :0b,display:{Name:'{"text":"DOWN" ,"italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:5 ,Pattern:"mr" },{Color:15,Pattern:"hh" }]}}
replaceitem entity @s hotbar.3 minecraft:lime_banner{ snake_right:1b,display:{Name:'{"text":"RIGHT","italic":false,"bold":true}'}, BlockEntityTag:{Patterns:[{Color:15,Pattern:"rd" },{Color:15,Pattern:"rud"}]}}

replaceitem entity @s hotbar.4 minecraft:air
replaceitem entity @s hotbar.5 minecraft:air
replaceitem entity @s hotbar.6 minecraft:air
replaceitem entity @s hotbar.7 minecraft:air
replaceitem entity @s hotbar.8 minecraft:air