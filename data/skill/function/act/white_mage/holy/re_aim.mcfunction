#> skill:act/white_mage/holy/re_aim
#
# ホーリーリエイム

# タイマー再設定
scoreboard players set @s Interval 5

# ターゲット捕捉
execute as @e[tag=Enemy,distance=..15,limit=1,sort=nearest] run tag @s add Target

# 対象にもう一度飛ばす
execute facing entity @e[tag=Target,distance=..15,limit=1] feet positioned 0.0 0.0 0.0 positioned ^ ^0.15 ^0.15 run function calc:throw_projectile/

# ターゲット解放
tag @e[tag=Target,distance=..15,limit=1] remove Target
