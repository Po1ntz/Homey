#Unique identifier for each player
scoreboard objectives add pointz.UUID1 dummy
scoreboard objectives add pointz.UUID2 dummy
scoreboard objectives add pointz.UUID3 dummy
scoreboard objectives add pointz.UUID4 dummy

scoreboard objectives add pointz.pid dummy
scoreboard objectives add pointz.entity.pid dummy

execute as @a unless score @s pointz.pid matches 1.. run function alchemist:network/register_pid

#Set UUIDs
execute as @a store result score @s pointz.UUID1 run data get entity @s UUID[0]
execute as @a store result score @s pointz.UUID2 run data get entity @s UUID[1]
execute as @a store result score @s pointz.UUID3 run data get entity @s UUID[2]
execute as @a store result score @s pointz.UUID4 run data get entity @s UUID[3]