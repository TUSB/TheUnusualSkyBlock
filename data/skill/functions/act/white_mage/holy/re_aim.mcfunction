
## ホーリーリエイム

# タイマー再設定
scoreboard players set @s Interval 5

# ターゲット捕捉
execute as @e[distance=..15,tag=Enemy,limit=1,sort=nearest] run tag @s add Target

# 対象にもう一度飛ばす
execute facing entity @e[distance=..15,tag=Target,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^0.15 ^0.15 run function calc:throw_projectile/

# ターゲット解放
tag @e[distance=..15,tag=Target,limit=1] remove Target
