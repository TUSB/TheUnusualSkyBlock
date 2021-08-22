##############################
### ルカナントラップ継続
##############################

#ダメージ増加倍率を取得
execute store result score _ Calc run data get entity @s ReapplicationDelay
#適用
execute as @e[tag=Mob,scores={Damage=1..},distance=..5] run function skill:act/hunter/kasap_trap/apply
#演出
function makeup:skill/act/hunter/kasap_trap/tick
