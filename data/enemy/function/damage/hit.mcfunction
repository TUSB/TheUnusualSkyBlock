#> enemy:damage/hit
# Hitダメージ 同期処理

#CallOnDamage
execute if entity @s[tag=CallOnDamage] unless entity @s[tag=NoAI] at @s run function ai:call/trigger/damage/
#ダメージ表示
function enemy:show_damage/

#敵火だるま解除判定
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/cure_check

#敵畏怖吹っ飛び処理
execute if entity @s[tag=EnemyFear] if entity @a[distance=..5] run function effect:enemy_debuff/fear/blow_off

#リセット
tag @s remove HitDamageTaken
tag @s remove ReceivedPhysicalDamage
tag @s remove ReceivedMagicDamage
tag @s remove ReceivedUnreasonableDamage
