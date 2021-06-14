execute if entity @e[tag=snake_center,tag=!state_0] run tellraw @a[distance=..0.1] {"text":"[Snake Game]: In order to refresh uid, there must be no players in any snake games.","italic":true,"color":"gray"}

execute unless entity @e[tag=snake_center,tag=!state_0] run function snake:classes/state_0_unpaired/refresh_count_uid/run