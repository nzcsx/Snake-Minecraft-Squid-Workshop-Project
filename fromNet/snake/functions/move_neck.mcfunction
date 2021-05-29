#detect head and apply tag
execute positioned ~ ~ ~1 if entity @e[tag=snake,tag=head,distance=..0.1] run tag @s add n
execute positioned ~ ~ ~-1 if entity @e[tag=snake,tag=head,distance=..0.1] run tag @s add s
execute positioned ~1 ~ ~ if entity @e[tag=snake,tag=head,distance=..0.1] run tag @s add w
execute positioned ~-1 ~ ~ if entity @e[tag=snake,tag=head,distance=..0.1] run tag @s add e