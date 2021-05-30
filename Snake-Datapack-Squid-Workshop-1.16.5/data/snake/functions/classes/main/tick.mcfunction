########################################
# Check if someone playing
execute as @a[scores={snake_uid=0..}] at @e[tag=snake_center,scores={snake_uid=0..}] if score @s snake_uid = @e[tag=snake_center,distance=..0.1,limit=1] snake_uid