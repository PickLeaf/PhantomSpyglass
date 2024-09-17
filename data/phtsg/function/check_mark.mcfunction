$execute if entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{owner:$(owner)}}}}] \
run return run function phtsg:recover
title @s title {"text":"!","color":"dark_red"}
scoreboard players set @s recover_phtsg_trigger -1
scoreboard players enable @a recover_phtsg_trigger