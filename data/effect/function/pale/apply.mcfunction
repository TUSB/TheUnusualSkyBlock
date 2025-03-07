#> effect:pale/apply
###ペイル(最大HP割合減少)

# 効果付与の中断条件
execute if score @s PaleLevel matches ..-1 run return fail
execute if score @s PaleLevel matches 9.. run return fail

# 減少させる
scoreboard players add @s PaleLevel 1
function effect:pale/health_down

execute run function makeup:effect/pale/apply

# 一生に一回だけ付与 ロックする
scoreboard players set _ _ -1
scoreboard players operation @s PaleLevel *= _ _
