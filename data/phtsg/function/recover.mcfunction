tag @s remove phtsg_on
scoreboard players set @s recover_phtsg_trigger -1
execute unless entity @a[tag=phtsg_on] run scoreboard objectives remove recover_phtsg_trigger
execute at @s summon text_display run function phtsg:ride
gamemode survival @s
execute at @s run function phtsg:go_mark with storage phtsg {}