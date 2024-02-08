#CallOnDamage
execute if entity @s[tag=CallOnDamage,tag=HitDamageTaken] at @s run function enemy:ai/call/trigger/damage/
#属性・スキルダメージ反映
scoreboard players add @s[scores={Damage=0},tag=!HitDamageTaken] StoredDamage 1
scoreboard players add @s[scores={Damage=0}] Damage 1
scoreboard players operation @s HP -= @s Damage
scoreboard players operation @s HP < @s HPMax
#ダメージ演出
execute if score @s Damage matches 0.. run function makeup:skill/damage/damage
#ダメージ表示
execute if entity @s[tag=HitDamageTaken] run function enemy:show_damage/
#リセット
scoreboard players reset @s Damage
tag @s remove HitDamageTaken
#死亡処理
execute if score @s HP matches ..0 run function entity:mob_death/check
#共通 - ライフスカウター
execute if entity @s[tag=LifeScouter] run function skill:act/common/life_scouter/bar_set

tag @s remove ReceivedPhysicalDamage
tag @s remove ReceivedFireDamage
tag @s remove ReceivedIceDamage
tag @s remove ReceivedLightningDamage
tag @s remove ReceivedLightDamage
tag @s remove ReceivedDarkDamage
