#Function
## Damage上限を1000に設定
scoreboard players set _ _ 1000
scoreboard players operation @s Damage < _ _
## RageDefenseとRageAttackの上昇
scoreboard players set _ Calc 400
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense 1
scoreboard players add _ _ 15
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense int 1 run scoreboard players operation _ _ < _ Calc 
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageAttack 1
scoreboard players add _ _ 15
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageAttack int 1 run scoreboard players operation _ _ < _ Calc 