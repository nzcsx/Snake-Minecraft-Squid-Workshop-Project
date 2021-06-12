########################################
# If hit boundary or bite self, game over
execute align y if block ^ ^0.5 ^0.25 #snake:boundary run scoreboard players set @e[tag=this_center,limit=1] snake_stt 3
execute if entity @e[tag=snake_nothead,distance=..0.1] run scoreboard players set @e[tag=this_center,limit=1] snake_stt 3


########################################
# Reset the timer to 0 (aka to 1 next tick) if game over
data modify entity @e[tag=this_center,scores={snake_stt=3},limit=1] Age set value 0