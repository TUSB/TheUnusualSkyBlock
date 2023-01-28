#Function
## Damage上限を1000に設定
scoreboard players set _ _ 1000
scoreboard players operation @s Damage < _ _
## RageDefenseの処理
# (150 - RageDefense) * 0.9 (c1)
execute store result score _ Calc run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense 1
scoreboard players set _ _ 150
scoreboard players operation _ _ -= _ Calc
scoreboard players set _ Calc 90
scoreboard players operation _ _ *= _ Calc
scoreboard players set _ Calc 100
scoreboard players operation _ _ /= _ Calc
# ダメージを c1 / 150 倍に軽減する
scoreboard players set _ Calc 150
scoreboard players operation @s Damage *= _ _
scoreboard players operation @s Damage /= _ Calc
## 擬似ProtectionⅢ
data modify entity @s Tags set from storage mob_data: Tags
execute if entity @s[tag=Protection] run scoreboard players set _ _ 40
execute if entity @s[tag=Protection] run scoreboard players operation @s Damage *= _ _
execute if entity @s[tag=Protection] run scoreboard players operation @s Damage /= _ Calc
## RageDefenseとRageAttackの上昇
execute store result score # _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.DamageTick 1
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense 1
execute if score # _ matches 1.. run scoreboard players add _ _ 1
execute if score # _ matches 0 run scoreboard players add _ _ 15
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.RageDefense int 1 run scoreboard players operation _ _ < _ Calc 
execute store result score _ _ run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack 1
execute if score # _ matches 1.. run scoreboard players add _ _ 1
execute if score # _ matches 0 run scoreboard players add _ _ 15
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.Attack int 1 run scoreboard players operation _ _ < _ Calc 
execute if score # _ matches 0 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AdditionalAI.DamageTick set value 3
