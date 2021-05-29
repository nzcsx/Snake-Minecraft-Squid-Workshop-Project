#error if someone's playing
execute if entity @a[tag=snake_playing] run tellraw @p {"text":"[Error] Someone is already playing snake","color":"dark_red"}

#play if there's nobody playing
execute unless entity @a[tag=snake_playing] as @p run function snake:start_play