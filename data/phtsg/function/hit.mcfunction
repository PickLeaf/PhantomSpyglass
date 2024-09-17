execute if entity @s[gamemode=creative] run return fail

scoreboard objectives add recover_phtsg_trigger trigger
scoreboard players set @s recover_phtsg_trigger -1
scoreboard players enable @a recover_phtsg_trigger
schedule function phtsg:schedule 1t

data modify storage phtsg owner set from entity @s UUID
execute at @s anchored eyes positioned ^ ^ ^ \
summon minecraft:item_display at @s \
run function phtsg:summon_mark with storage phtsg {}
data remove storage phtsg owner

tag @s add phtsg_on
gamemode spectator @s
execute at @s run teleport @s ^ ^ ^-4.0 ~ ~