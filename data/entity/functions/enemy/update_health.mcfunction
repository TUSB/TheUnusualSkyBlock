#自然ダメージ反映
execute store result score _ _ run data get entity @s AbsorptionAmount
scoreboard players operation @s HP += _ _
scoreboard players remove @s HP 1000000
#属性・スキルダメージ反映
scoreboard players operation @s HP -= @s Damage
scoreboard players reset @s Damage
#AbsorptionAmountを1000000に戻す
data modify entity @s AbsorptionAmount set value 1000000f
data modify entity @s HurtTime set value 0s
#ダメージ演出
effect give @s instant_damage 1 127 true
effect give @s instant_health 1 127 true
#死亡処理
execute if score @s HP matches ..0 run function entity:mob_death