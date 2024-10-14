execute as @e[tag=phtsg.prepRecover,tag=phtsg.mark] \
    run function phtsg:recover/4

execute at @s positioned ~ ~1 ~ summon minecraft:text_display \
    run function phtsg:recover/ride

execute unless entity @e[tag=phtsg.mark] \
    run scoreboard objectives remove recover_phtsg_trigger

gamemode survival
tag @s remove phtsg.prepRecover
tag @s remove phtsg.on