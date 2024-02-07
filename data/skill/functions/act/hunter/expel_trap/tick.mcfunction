##############################
### ニフラムトラップ継続中処理
##############################

#スキルレベル取得
execute store result score _ Level run data get entity @s ReapplicationDelay
#プレイヤーレベル取得
execute store result score _ Calc run data get entity @s RadiusOnUse
#スキルレベル1 : 20 + Level / 4
#スキルレベル2 : 20 + Level / 3
scoreboard players set _ _ 5
scoreboard players operation _ _ -= _ Level
scoreboard players operation _ Calc /= _ _
scoreboard players set _ _ 20
scoreboard players operation _ Calc += _ _
#プレイヤーレベル以下の敵を消滅
execute as @e[tag=Enemy,distance=..5] unless score _ Calc < @s Level positioned as @s run function skill:act/hunter/expel_trap/apply
#演出
function makeup:skill/act/hunter/expel_trap/tick
