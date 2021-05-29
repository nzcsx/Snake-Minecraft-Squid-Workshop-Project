#clear inv
clear @s

#give items
replaceitem entity @s hotbar.0 minecraft:wooden_shovel{display:{Name:'{"text":"UP","italic":false,"bold":true}'}}
replaceitem entity @s hotbar.1 minecraft:stone_shovel{display:{Name:'{"text":"DOWN","italic":false,"bold":true}'}}
replaceitem entity @s hotbar.2 minecraft:iron_shovel{display:{Name:'{"text":"LEFT","italic":false,"bold":true}'}}
replaceitem entity @s hotbar.3 minecraft:golden_shovel{display:{Name:'{"text":"RIGHT","italic":false,"bold":true}'}}

replaceitem entity @s hotbar.8 minecraft:barrier{display:{Name:'{"text":"EXIT","italic":false,"bold":true}'}}

#add tag
tag @s add snake_playing