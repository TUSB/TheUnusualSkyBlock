##############################
### からくり糸切れ処理
##############################

tellraw @s {"text":"操り糸が切れてしまった！！","color":"yellow"}
playsound minecraft:block.tripwire.detach master @a ~ ~ ~ 60 0.63
kill @e[distance=0,tag=ActivePuppet,limit=1]
