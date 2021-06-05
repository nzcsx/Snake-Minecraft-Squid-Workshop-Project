########################################
# Remove all the objectives and tags
function snake:classes/main/clean

########################################
# Create snake_dir objective
#   snake_dir := direction of each snake_body entity
#       {score=0} := left
#       {score=1} := up
#       {score=2} := down
#       {score=3} := right
#   snake_dir := direction of this snake_center
#       {score=0} := +z
#       {score=1} := +x
#       {score=2} := -z
#       {score=3} := -x
scoreboard objectives add snake_dir dummy

########################################
# Create snake_scr objective
#   snake_scr := score of this snake_center
scoreboard objectives add snake_scr dummy

########################################
# Create snake_uid objective
#   snake_uid := uuid of this snake_center and player
#       used to identify snake_center and player pair
scoreboard objectives add snake_uid dummy

########################################
# Create snake_stt objective
#   snake_stt := state of this snake_center
#       {score=0} := state_0_unpaired
#       {score=1} := state_1_ready
#       {score=2} := state_2_playing
#       {score=3} := state_3_over
scoreboard objectives add snake_stt dummy


########################################
# Loading message
tellraw @a {"text":"[Server]: Snake-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}