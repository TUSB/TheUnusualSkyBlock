#> enemy:damage/hit
# Hitダメージ 同期処理

#CallOnDamage
execute if entity @s[tag=CallOnDamage] at @s run function ai:call/trigger/damage/
#ダメージ表示
function enemy:show_damage/

#敵火だるま解除判定
execute if entity @s[tag=EnemyBurn] run function effect:enemy_debuff/burn/cure_check

#リセット
tag @s remove HitDamageTaken
