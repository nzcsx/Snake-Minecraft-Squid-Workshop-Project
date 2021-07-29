########################################
# if ( Age == 1 )
# then do stuffs
execute if entity @s[nbt={Age:1}] run function snake:classes/state_2_playing/tick_as_center_low_freq



########################################
# if ( Age == snake_prd )
# then reset the timer to 0 (aka to 1 next tick)
execute store result score r0 snake_game run data get entity @s Age
execute if score r0 snake_game = @s snake_prd run data modify entity @s Age set value 0