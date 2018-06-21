##############################
### からくり糸切れ処理
##############################

scoreboard players operation $PuppetID ID = @s ID
execute as @e[tag=Puppet] if score @s ID = $PuppetID ID run kill @s
###---演出---Start
tellraw @s {"text":"操り糸が切れてしまった！！","color":"yellow"}
playsound minecraft:block.tripwire.detach master @a ~ ~ ~ 60 0.63
###---演出---End
