execute if score @s .registered <= ZERO Global-Variables run return fail

execute as @s[scores={.registered=..0}] store result storage homey:temp id byte 1 run scoreboard players get @s pointz.pid
execute as @s[scores={.registered=..0}] run function homey:util/init_player_storage with storage homey:temp
execute as @s[scores={.registered=..0}] run scoreboard players set @s .registered 1