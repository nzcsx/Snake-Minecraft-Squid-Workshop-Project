#kill apple
kill @e[tag=snake_apple,limit=1,sort=nearest,distance=..0.1]

#add score
scoreboard players add $score snake 1

#playsound
execute at @s run playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2

#increase body
execute as @e[tag=snake,tag=body,tag=tail] at @s run function snake:increase