########################################
# Update state of snake_center to playing
tag @e[tag=this_center] remove state_1
tag @e[tag=this_center] add state_2



########################################
# Remove unpair button
setblock ^ ^1.0 ^-20.0 air