#Function
tp @s ~ ~ ~
playsound entity.phantom.bite hostile @s ~ ~ ~ 1 0
playsound entity.elder_guardian.death hostile @s ~ ~ ~ 2 2
playsound item.trident.return hostile @s ~ ~ ~ 2 0.5
playsound entity.wither.spawn hostile @s ~ ~ ~ 1 1.5
tellraw @s {"translate":"%1$sは%2$sによって引き寄せられた！","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"Call.Name","interpret":true}]}