########################################
# Move forward
tp @s ^ ^ ^1

########################################
# Leave a dir indicator with tag snake_dir
execute unless entity @s[tag=snake_tail] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["snake_game","snake_dir"]}
execute unless entity @s[tag=snake_tail] run tp @e[tag=snake_dir,distance=..0.1] ~ ~ ~ ~ ~