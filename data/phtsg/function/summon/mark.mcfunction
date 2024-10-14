data modify entity @s ArmorItems[3] set value \
    {id:"minecraft:purple_concrete",\
    components:{"minecraft:enchantments":{"phtsg:phantom":1},\
    "minecraft:max_damage":1}}

execute store success entity @s ArmorItems[3].components."minecraft:damage" byte 1 \
    run forceload query ~ ~

execute if data entity @s ArmorItems[3].components{"minecraft:damage":0} \
    run forceload add ~ ~

execute rotated as @p positioned ^ ^ ^ run teleport @s ~ ~ ~ ~ ~
data modify entity @s Marker set value 1b
data modify entity @s Invisible set value 1b
tag @s add phtsg.mark
execute summon minecraft:interaction run function phtsg:summon/storage