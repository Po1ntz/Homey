# Required data
# waypoint name 
# coordinates (x y z)
# yaw and pitch

data modify storage homey:temp name set value "Waypoint"

data modify storage homey:temp x set from entity @s Pos[0]
data modify storage homey:temp y set from entity @s Pos[1]
data modify storage homey:temp z set from entity @s Pos[2]

data modify storage homey:temp rot1 set from entity @s Rotation[0]
data modify storage homey:temp rot2 set from entity @s Rotation[1]

execute store result storage homey:temp id int 1 run scoreboard players get @s pointz.pid
execute store result storage homey:temp count int 1 run scoreboard players get @s wp.count

execute as @s run function homey:waypoints/prepare with storage homey:temp