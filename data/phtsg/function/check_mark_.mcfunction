$execute if entity @e[type=minecraft:item_display,nbt={Tags:["$(0)","$(1)","$(2)","$(3)"]}] run return run function phtsg:recover
title @s title {"text":"!","color":"dark_red"}
scoreboard players set @s recover_phtsg_trigger -1
scoreboard players enable @a recover_phtsg_trigger