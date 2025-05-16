execute if score @s wp.count matches 0 run dialog show @s {"type":"minecraft:notice","title":"Waypoints","body":{"type":"minecraft:plain_message","contents":[{"text":"You have not set any waypoints. Try using the comand:\n"},{"text":"/function homey:waypoints/add","click_event":{"action":"run_command","command":"/function homey:waypoints/add"},"hover_event":{"action":"show_text","value":"Run the comand"}}]},"can_close_with_escape":true}
execute if score @s wp.count matches 0 run return 1


execute store result storage homey:temp id int 1 run scoreboard players get @s pointz.pid
function homey:waypoints/s with storage homey:temp

