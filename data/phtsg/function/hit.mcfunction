scoreboard objectives add recover_phtsg_trigger trigger
scoreboard players set @s recover_phtsg_trigger -1
scoreboard players enable @a recover_phtsg_trigger
scoreboard objectives add counter_phtsg_trigger dummy
scoreboard players add count counter_phtsg_trigger 1

data modify storage phtsg owner.0 set from entity @s UUID[0]
data modify storage phtsg owner.1 set from entity @s UUID[1]
data modify storage phtsg owner.2 set from entity @s UUID[2]
data modify storage phtsg owner.3 set from entity @s UUID[3]
execute at @s run function phtsg:summon_mark with storage phtsg owner
data remove storage phtsg owner

tag @s add phtsg_on
gamemode spectator @s[gamemode=survival]
execute at @s run teleport @s ^ ^ ^-4.0 ~ ~