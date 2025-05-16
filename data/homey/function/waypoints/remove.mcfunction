#remove delete
$data remove storage homey:waypoints $(id).actions[$(count)]
#remove wp
$data remove storage homey:waypoints $(id).actions[$(count)]



scoreboard players operation @s wp.count -= TWO Global-Variables
#$execute store result storage homey:waypoints $(id).count int 1 run scoreboard players get @s wp.count

scoreboard players operation @s .mapping.total = @s wp.count
$scoreboard players set @s .mapping.current $(count)

$function homey:waypoints/modify_mapping {"id":$(id), "mappingindex":$(count)}

$execute if score @s wp.count > ZERO Global-Variables run function homey:waypoints/show_waypoints with storage homey:waypoints $(id)
execute if score @s wp.count matches 0 run dialog show @s {"type":"minecraft:notice","title":"Waypoints","body":{"type":"minecraft:plain_message","contents":[{"text":"You have not set any waypoints. Try using the comand:\n"},{"text":"/function homey:waypoints/add","click_event":{"action":"run_command","command":"/function homey:waypoints/add"},"hover_event":{"action":"show_text","value":"Run the comand"}}]},"can_close_with_escape":true}

