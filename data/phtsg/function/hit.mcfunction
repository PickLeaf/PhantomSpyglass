execute if entity @s[gamemode=creative] run return fail

scoreboard objectives add recover_phtsg_trigger trigger
scoreboard players set @s recover_phtsg_trigger -1
scoreboard players enable @a recover_phtsg_trigger

data modify storage phtsg:storage interaction.player set from entity @s UUID
data modify storage phtsg:storage interaction.timestamp set value 0

execute at @s anchored feet summon minecraft:armor_stand at @s \
    run function phtsg:summon/mark

data remove storage phtsg:storage interaction
tag @s add phtsg.on
gamemode spectator @s
execute at @s run teleport @s ~ ~3 ~ ~ ~