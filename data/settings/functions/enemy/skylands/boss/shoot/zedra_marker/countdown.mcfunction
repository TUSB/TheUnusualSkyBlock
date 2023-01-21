#Function
title @a[distance=..10] times 0 20 0
title @a[distance=..10] title [{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.CountDown","color":"#FF0000","bold":true}]
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.CountDown int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.CountDown
playsound minecraft:block.conduit.deactivate hostile @a[distance=..64] ~ ~ ~ 0.5 0.15
playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..64] ~ ~ ~ 0.25 1.5
playsound minecraft:item.shield.break hostile @a[distance=..64] ~ ~ ~ 0.25 0
