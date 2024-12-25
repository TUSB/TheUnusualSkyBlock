#> effect:pale/apply
###ペイル(最大HP割合減少)

# 減少させる
scoreboard players add @s PaleLevel 1
function effect:pale/health_down

execute run function makeup:effect/pale/apply

# 一生に一回だけ付与 ロックする
scoreboard players set _ _ -1
scoreboard players operation @s PaleLevel *= _ _
