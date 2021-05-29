#subtitle
execute at @s run title @a[distance=..16] subtitle [{"text":"Score: ","color":"yellow"},{"score":{"name":"$score","objective":"snake"},"color":"#ffaaff","bold":true}]

#title
execute at @s run title @a[distance=..16] title {"text":"New High Score!","color":"yellow"}

#set hi score
scoreboard players operation $hi_score snake = $score snake