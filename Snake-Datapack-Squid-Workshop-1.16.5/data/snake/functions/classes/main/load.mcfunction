########################################
# Remove all the objectives and tags
function snake:classes/main/clean

########################################
# Create snake_dir objective
# snake_dir := direction of each snake body block
scoreboard objectives add snake_dir dummy

########################################
# Create snake_score objective
# snake_score := score of the snake game
scoreboard objectives add snake_score dummy