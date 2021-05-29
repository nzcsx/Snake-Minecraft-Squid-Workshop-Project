#init hi score
execute unless score $hi_score snake matches 0.. run scoreboard players set $hi_score snake 0

#subtitle
execute at @s run title @a[distance=..16] subtitle [{"text":"Score: ","color":"yellow"},{"score":{"name":"$score","objective":"snake"},"color":"#ffaaff","bold":true},{"text":" | High Score: "},{"score":{"name":"$hi_score","objective":"snake"},"color":"#ffaaff","bold":true}]

#title
execute at @s run title @a[distance=..16] title {"text":"Game Over","color":"yellow"}

#hi score
execute if score $hi_score snake < $score snake run function snake:hi_score

#playsound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2

#remove tags
tag @s remove snake_playing
tag @s remove game_over

#clear inv
clear @s