########################################
# Remove all the objectives and tags
function snake:classes/main/clean

########################################
# Create snake_scr objective
#   snake_scr := score of this snake_center
#       Set to 0 when constructed
#   snake_scr := highest score of this player
scoreboard objectives add snake_scr dummy

########################################
# Create snake_game objective
#   snake_cnt := total snake games constructed
#   snake_1st := highest score of whole server
scoreboard objectives add snake_game dummy
scoreboard players set snake_cnt snake_game 0
scoreboard players set snake_1st snake_game 0

########################################
# Create snake_cuid objective
#   snake_cuid := uuid of this snake_center
#       Assigned when constructed
#   snake_cuid := uuid of this player
#       {score=null} := unpaired
#       {score=0.. } := paired
scoreboard objectives add snake_cuid dummy



########################################
# Loading message
tellraw @a {"text":"[Server]: Snake-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}