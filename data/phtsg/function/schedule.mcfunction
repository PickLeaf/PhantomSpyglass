execute as @a[tag=phtsg_on] if score @s recover_phtsg_trigger matches 0.. \
run function phtsg:schedule_
execute if entity @a[tag=phtsg_on] \
run schedule function phtsg:schedule 1t