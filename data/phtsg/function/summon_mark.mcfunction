data modify entity @s item.id set value "minecraft:purple_concrete"
$data modify entity @s item.components."minecraft:custom_data".owner set value $(owner)
execute store success entity @s item.components."minecraft:custom_data".loaded byte 1 \
run forceload query ~ ~
execute if data entity @s item.components."minecraft:custom_data"{loaded:0b} \
run forceload add ~ ~