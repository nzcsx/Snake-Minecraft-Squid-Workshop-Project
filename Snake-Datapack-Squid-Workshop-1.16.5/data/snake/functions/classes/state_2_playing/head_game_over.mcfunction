########################################
# If hit boundary or bite self, game over
execute align y if block ^ ^0.5 ^0.15 #snake:boundary run tag @e[tag=this_center] remove state_2
execute align y if block ^ ^0.5 ^0.15 #snake:boundary run tag @e[tag=this_center] add state_3
execute if entity @e[tag=this_center,tag=!collision_free] if entity @e[tag=snake_nothead,distance=..0.1] run tag @e[tag=this_center] remove state_2
execute if entity @e[tag=this_center,tag=!collision_free] if entity @e[tag=snake_nothead,distance=..0.1] run tag @e[tag=this_center] add state_3



########################################
# Reset the timer to 0 (aka to 1 next tick) if game over
data modify entity @e[tag=this_center,tag=state_3,limit=1] Age set value 0