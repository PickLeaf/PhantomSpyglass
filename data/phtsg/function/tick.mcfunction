execute if score @s[tag=phtsg_on] recover_phtsg_trigger matches 0.. run function phtsg:check_mark
execute at @s[tag=phtsg_on] anchored eyes positioned ^ ^ ^ if entity @e[type=minecraft:item_display,nbt={item:{id:"minecraft:purple_concrete"},Air:404s},distance=..1.0] run function phtsg:check_mark