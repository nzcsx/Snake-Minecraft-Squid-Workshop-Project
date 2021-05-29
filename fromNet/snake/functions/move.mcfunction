#move snake
execute if score $dir snake matches 1 run tp @s ~ ~ ~1
execute if score $dir snake matches 2 run tp @s ~ ~ ~-1
execute if score $dir snake matches 3 run tp @s ~1 ~ ~
execute if score $dir snake matches 4 run tp @s ~-1 ~ ~

#set old dir
scoreboard players operation $old_dir snake = $dir snake

#move body
execute as @e[tag=snake,tag=body,tag=n] at @s run function snake:move_n
execute as @e[tag=snake,tag=body,tag=s] at @s run function snake:move_s
execute as @e[tag=snake,tag=body,tag=w] at @s run function snake:move_w
execute as @e[tag=snake,tag=body,tag=e] at @s run function snake:move_e

#apply body tags
execute as @e[tag=snake,tag=body] at @s run function snake:move_tags

#neck special
execute as @e[tag=snake,tag=neck] at @s run function snake:move_neck