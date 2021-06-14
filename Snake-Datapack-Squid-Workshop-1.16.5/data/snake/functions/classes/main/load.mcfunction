########################################
# Remove some objectives and tags
# function snake:classes/main/clean

########################################
# Create snake_scr objective
#   snake_scr := score of this snake_center
#       Set to 0 when constructed
#   snake_scr := highest score of this player
scoreboard objectives add snake_scr dummy

########################################
# Create snake_uid objective
#   snake_uid := uuid of this snake_center
#       Assigned when constructed, starting from 0.
#   snake_uid := uuid of this player
#       {score=null} := unpaired
#       {score=0.. } := paired
scoreboard objectives add snake_uid dummy

########################################
# Create snake_game objective
#   count := total snake games constructed
#   1st := highest score in the server
scoreboard objectives add snake_game dummy
function snake:classes/state_0_unpaired/refresh_count_uid/hit_button



########################################
# Loading message
tellraw @a {"text":"[Server]: Snake-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}