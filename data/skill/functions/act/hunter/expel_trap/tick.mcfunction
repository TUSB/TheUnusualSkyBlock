##############################
### ニフラムトラップ継続中処理
##############################

#スキルレベル取得
execute store result score _ Level run data get entity @s ReapplicationDelay
#プレイヤーレベル取得
execute store result score _ Calc run data get entity @s RadiusOnUse
#スキルレベル2ならプレイヤーレベルを1.5倍
execute if score _ Level matches 2 run scoreboard players operation _ Calc /= _ Level
execute if score _ Level matches 2 run scoreboard players operation _ Calc += @s Level
#プレイヤーレベル以下の敵を消滅
execute as @e[tag=Enemy,distance=..5] unless score _ Calc < @s Level positioned as @s run function skill:act/hunter/expel_trap/apply
#演出
function makeup:skill/act/hunter/expel_trap/tick
