########################################
# Update snake_stt of snake_center to playing
scoreboard players set @e[tag=this_center] snake_stt 2

########################################
# Update snake_tmr of snake_center to 0
scoreboard players set @e[tag=this_center] snake_tmr 0

########################################
# Remove unpair button
setblock ^ ^1.0 ^-20.0 air