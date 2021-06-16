########################################
# Remove some objectives and tags
# function snake:classes/main/clean

########################################
# Create snake_scr objective
#   snake_scr := score of this snake_center
#       Set to 0 when constructed
#       {score=0..}
scoreboard objectives add snake_scr dummy

########################################
# Create --Leaderboard-- objective
#   --Leaderboard-- := high score of this player
#       {score=null} or {score=1..}
scoreboard objectives add --Leaderboard-- dummy

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
#   r0 := a temporary var for any calculations
#   r1 := a temporary var for any calculations
scoreboard objectives add snake_game dummy
function snake:classes/state_0_unpaired/refresh_count_uid/hit_button
execute unless score 1st snake_game matches 1.. run scoreboard players set 1st snake_game 0

########################################
# Create snake_prd objective
#   snake_prd := the time period of movement in state_2_playing
scoreboard objectives add snake_prd dummy



########################################
# Create a team for all snake players
team add snake_game "snake_game_players"
team modify snake_game color white



########################################
# Loading message
tellraw @a {"text":"[Server]: Snake-Datapack from Squid-Workshop Loaded","italic":true,"color":"gray"}