execute at @s rotated as @s \
    run teleport @a[tag=phtsg.prepRecover,tag=phtsg.on] ~ ~ ~ ~ ~

execute if data entity @s ArmorItems[3].components{"minecraft:damage":0} \
    run forceload remove ~ ~

execute on passengers run kill @s
kill @s