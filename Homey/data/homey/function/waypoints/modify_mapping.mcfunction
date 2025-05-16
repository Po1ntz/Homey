# Inputs
# id -> the id of the storage that contains the actions that should be modified
# mappingindex -> the current index of the iteration

execute if score @s .mapping.current = @s .mapping.total run return 1

$data modify storage homey:waypoints $(id).actions[$(mappingindex)] set value {"label":"🗙","tooltip":[{"text":"Delete Waypoint"},{"text":"Warning: This action is irreversible","color":"#e21212","bold":true}],"width":20,"on_click":{"action":"run_command","command":"function homey:waypoints/remove {\u0022id\u0022:$(id), \u0022count\u0022:$(mappingindex)}"}}

scoreboard players add @s .mapping.current 2
$execute store result storage homey:waypoints $(id).mappingindex int 1 run scoreboard players get @s .mapping.current
$function homey:waypoints/modify_mapping with storage homey:waypoints $(id)
