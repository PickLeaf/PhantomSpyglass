data modify storage phtsg owner.0 set from entity @s UUID[0]
data modify storage phtsg owner.1 set from entity @s UUID[1]
data modify storage phtsg owner.2 set from entity @s UUID[2]
data modify storage phtsg owner.3 set from entity @s UUID[3]
execute at @s run function phtsg:check_mark_ with storage phtsg owner
data remove storage phtsg owner