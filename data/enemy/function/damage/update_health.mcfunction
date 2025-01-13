#> enemy:damage/update_health
#AbsorptionAmountの変化を取得
execute store result score @s Damage run data get entity @s AbsorptionAmount -1
scoreboard players add @s Damage 2048
#AbsorptionAmountを2048に戻す
data modify entity @s AbsorptionAmount set value 2048f
# 累積ダメージ
scoreboard players operation @s StoredDamage += @s Damage
#ダメージ反映
scoreboard players add @s[scores={Damage=0},tag=!HitDamageTaken] StoredDamage 1
scoreboard players add @s[scores={Damage=0}] Damage 1
scoreboard players operation @s HP -= @s Damage
scoreboard players operation @s HP < @s HPMax
#ダメージ演出
execute if score @s Damage matches 0.. run function makeup:enemy/damage/damage
#リセット
scoreboard players reset @s Damage
#死亡処理
execute if score @s HP matches ..0 run function entity:mob_death/check
#共通 - ライフスカウター
execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/bar_set
