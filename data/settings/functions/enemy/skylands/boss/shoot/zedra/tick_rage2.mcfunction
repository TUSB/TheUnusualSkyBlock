#Function
## RageDefenseとRageAttackの上昇
scoreboard players set _ Calc 400
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense 1
scoreboard players add _ _ 2
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense int 1 run scoreboard players operation _ _ < _ Calc 
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageAttack 1
scoreboard players add _ _ 2
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageAttack int 1 run scoreboard players operation _ _ < _ Calc 
