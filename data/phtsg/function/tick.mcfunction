execute unless entity @s[tag=phtsg_on] run return fail

data modify storage phtsg fail set value 1b
data modify storage phtsg owner set from entity @s UUID

execute at @s anchored eyes positioned ^ ^ ^ \
as @e[type=minecraft:item_display,distance=..1] \
run function phtsg:check_nearby_mark with storage phtsg {}

execute if data storage phtsg {fail:1b} \
run return run function phtsg:tick_fail

function phtsg:check_mark with storage phtsg {}
function phtsg:tick_fail