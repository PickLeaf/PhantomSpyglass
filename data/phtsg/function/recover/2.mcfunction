tag @s add phtsg.prepRecover

execute on passengers on target if entity @s[tag=phtsg.prepRecover] \
    at @s run function phtsg:recover/3

tag @s remove phtsg.prepRecover