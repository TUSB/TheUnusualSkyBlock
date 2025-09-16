#> skill:act/white_mage/halo_bound/tick
#
# ヘイローバウンドtick処理

# tpで動けなくする
tp @e[distance=..2,tag=Enemy] @s

# 終了時処理
execute if data entity @s {PortalCooldown:1} run function skill:act/white_mage/halo_bound/act2

# 演出
execute if score @s HaloBound matches 2..11 run function makeup:skill/act/white_mage/halo_bound/act0
execute if score @s HaloBound matches 1 run function makeup:skill/act/white_mage/halo_bound/schedule/loop

# スコアをデクリメント
execute if score @s HaloBound matches 2..11 run scoreboard players remove @s HaloBound 1
