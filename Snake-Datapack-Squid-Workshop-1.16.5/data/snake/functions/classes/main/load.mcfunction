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
# Create snake_uid objective
#   snake_uid := uuid of this snake_center
#       Assigned when constructed
#   snake_uid := uuid of this player
#       {score=null} := unpaired
#       {score=0.. } := paired
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
# Create snake_tmr objective
#   snake_tmr := timer of this snake_center
#       {score=0} := the tick snake moves
#       {score=20} := loop back to 0 imm.
scoreboard objectives add snake_tmr dummy



########################################
# Loading message
tellraw @a {"text":"[Server]: Snake-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}