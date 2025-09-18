#> skill:act/white_mage/halo_bound/tick
#
# ヘイローバウンドtick処理

# tpで動けなくする
tp @e[distance=..2,tag=Enemy,tag=!Unmoved] @s

# 終了時処理
execute if data entity @s {PortalCooldown:1} run function skill:act/white_mage/halo_bound/act2

# スコアをインクリメント
execute unless score @s HaloBound matches 11.. run scoreboard players add @s HaloBound 1

# ストレージにスコアを代入
execute store result storage skill: macro int 1 run scoreboard players get @s HaloBound

# 演出
execute if score @s HaloBound matches 1..11 run function makeup:skill/act/white_mage/halo_bound/tick with storage skill:

# ストレージリセット
data remove storage skill: macro
