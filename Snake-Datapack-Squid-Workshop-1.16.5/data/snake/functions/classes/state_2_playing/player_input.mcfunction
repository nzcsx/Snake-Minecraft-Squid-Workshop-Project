########################################
# Tag paired snake_head, so lower functions can select it
execute as @e[tag=snake_head] if score @s snake_uid = @e[tag=this_center,limit=1] snake_uid run tag @s add this_head



########################################
# Change head dir according to inputs
execute if entity @s[nbt={SelectedItem:{tag:{snake_left :true}}}] run function snake:classes/state_2_playing/player_head_left
execute if entity @s[nbt={SelectedItem:{tag:{snake_up   :true}}}] run function snake:classes/state_2_playing/player_head_up
execute if entity @s[nbt={SelectedItem:{tag:{snake_down :true}}}] run function snake:classes/state_2_playing/player_head_down
execute if entity @s[nbt={SelectedItem:{tag:{snake_right:true}}}] run function snake:classes/state_2_playing/player_head_right



########################################
# Untag unpaired snake_head
tag @e[tag=this_head,limit=1] remove this_head