#CallOnDamage
execute if entity @s[tag=CallOnDamage,tag=HitDamageTaken] at @s run function enemy:ai/call/trigger/damage/
tag @s remove HitDamageTaken
#属性・スキルダメージ反映
scoreboard players add @s[scores={Damage=0}] Damage 1
scoreboard players operation @s HP -= @s Damage
scoreboard players reset @s Damage
#ダメージ演出
effect give @s instant_damage 1 127 true
effect give @s instant_health 1 127 true
#死亡処理
execute if score @s HP matches ..0 run function entity:mob_death/check
