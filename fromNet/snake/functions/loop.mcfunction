#execute game loop only if there's someone playing
execute as @a[tag=snake_playing] at @s run function snake:game_loop