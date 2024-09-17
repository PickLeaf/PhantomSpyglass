$execute at @e[type=minecraft:item_display,nbt={item:{components:{"minecraft:custom_data":{owner:$(owner)}}}}] \
rotated as @s \
run teleport @s ~ ~-1.0 ~
$execute as @e[type=minecraft:item_display,nbt={item:{components:{"minecraft:custom_data":{owner:$(owner)}}}}] \
run function phtsg:del_mark