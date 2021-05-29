#give tags
execute if entity @e[tag=snake,tag=temp,tag=n,distance=..0.1] run tag @s add n
execute if entity @e[tag=snake,tag=temp,tag=s,distance=..0.1] run tag @s add s
execute if entity @e[tag=snake,tag=temp,tag=w,distance=..0.1] run tag @s add w
execute if entity @e[tag=snake,tag=temp,tag=e,distance=..0.1] run tag @s add e

#remove dummy armor stand
kill @e[tag=snake,tag=temp,distance=..0.1]