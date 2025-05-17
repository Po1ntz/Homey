execute if score @s .registered matches 1 run return fail

execute as @s unless score @s wp.count > ZERO Global-Variables run scoreboard players set @s wp.count 0

execute as @s run scoreboard players set @s .registered 0

execute as @s store result storage homey:temp id byte 1 run scoreboard players get @s pointz.pid
execute as @s run function homey:util/init_player_storage with storage homey:temp
execute as @s run scoreboard players set @s .registered 1