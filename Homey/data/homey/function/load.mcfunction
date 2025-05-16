function alchemist:network/restart_network
function homey:globals/load_global_variables
function alchemist:network/start_network
function homey:util/load_positions_scoreboards

scoreboard objectives remove .registered
scoreboard objectives remove wp.count

scoreboard objectives add .registered dummy
scoreboard objectives add .mapping.total dummy
scoreboard objectives add .mapping.current dummy
scoreboard objectives add wp.count dummy

scoreboard players set WP.MAX wp.count 40
execute as @a unless score @s wp.count > ZERO Global-Variables run scoreboard players set @s wp.count 0

execute as @a run scoreboard players set @s .registered 0

execute as @a[scores={.registered=..0}] store result storage homey:temp id byte 1 run scoreboard players get @s pointz.pid
execute as @a[scores={.registered=..0}] run function homey:util/init_player_storage with storage homey:temp
execute as @a[scores={.registered=..0}] run scoreboard players set @s .registered 1



say Loaded Homey Datapack