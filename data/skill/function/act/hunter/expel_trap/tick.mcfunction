#> skill:act/hunter/expel_trap/tick
#
# ニフラムトラップ毎tick処理

# 計算結果を取得
scoreboard players operation _ Calc = @s Level

# レベルが計算結果以下の敵を消滅
execute as @e[tag=Enemy,distance=..5] unless score _ Calc < @s Level positioned as @s run function skill:act/hunter/expel_trap/apply

# 演出
function makeup:skill/act/hunter/expel_trap/tick
