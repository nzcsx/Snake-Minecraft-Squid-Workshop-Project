########################################
# Change head dir according to inputs
execute if entity @s[nbt={SelectedItem:{tag:{snake_left :true}}}] run function snake:classes/state_2_playing/input/quad_dir/head_left
execute if entity @s[nbt={SelectedItem:{tag:{snake_up   :true}}}] run function snake:classes/state_2_playing/input/quad_dir/head_up
execute if entity @s[nbt={SelectedItem:{tag:{snake_down :true}}}] run function snake:classes/state_2_playing/input/quad_dir/head_down
execute if entity @s[nbt={SelectedItem:{tag:{snake_right:true}}}] run function snake:classes/state_2_playing/input/quad_dir/head_right