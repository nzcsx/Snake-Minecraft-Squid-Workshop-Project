########################################
# Remove all the objectives and tags
function snake:classes/main/clean

########################################
# Create snake_dir objective
# snake_dir := direction of each snake body block
scoreboard objectives add snake_dir dummy

########################################
# Create snake_scr objective
# snake_scr := score of this snake game
scoreboard objectives add snake_scr dummy

########################################
# Create snake_uid objective
# snake_uid := uuid of this snake game and player
scoreboard objectives add snake_uid dummy