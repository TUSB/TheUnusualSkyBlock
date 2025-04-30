#> enemy:damage/hit
# Hitダメージ 同期処理

#CallOnDamage
execute if entity @s[tag=CallOnDamage] at @s run function ai:call/trigger/damage/
#ダメージ表示
function enemy:show_damage/

#リセット
tag @s remove HitDamageTaken
tag @s remove ReceivedPhysicalDamage
tag @s remove ReceivedMagicDamage
tag @s remove ReceivedUnreasonableDamage
