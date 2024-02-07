##############################
### ルカナントラップ継続
##############################

#ダメージ増加倍率を取得
execute store result score _ Calc run data get entity @s ReapplicationDelay
#適用
execute as @e[tag=Enemy,scores={Damage=1..},distance=..5] unless data entity @s {ActiveEffects:[{Id:27,Amplifier:100b}]} run function skill:act/hunter/kasap_trap/apply
#演出
function makeup:skill/act/hunter/kasap_trap/tick
