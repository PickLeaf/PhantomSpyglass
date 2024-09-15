tag @s remove phtsg_on
scoreboard players set @s recover_phtsg_trigger -1
gamemode survival @s
scoreboard players remove count counter_phtsg_trigger 1
execute if score count counter_phtsg_trigger matches ..0 run function phtsg:del_scoreboard
execute at @s run function phtsg:go_mark with storage phtsg owner