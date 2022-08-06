
## 真空斬りリエイム

# タイマー再設定
scoreboard players set @s _ 5

# ターゲット捕捉
scoreboard players operation _ _ = @s TrackingID
execute as @e[distance=..128,tag=Enemy] if score @s TrackingID = _ _ run tag @s add Target

# 対象にもう一度飛ばす
execute facing entity @e[distance=..128,tag=Target,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^ ^2.5 run function calc:throw_projectile/

# ターゲット解放
tag @e[distance=..128,tag=Target,limit=1] remove Target
