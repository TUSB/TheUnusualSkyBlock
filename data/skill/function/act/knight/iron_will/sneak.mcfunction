#> skill:act/knight/iron_will/sneak
#
# アイアンウィル範囲化
scoreboard players set _ _ 3
scoreboard players operation @s IronWill = _ IronWill
scoreboard players operation @s IronWill /= _ _

# ノクバ耐性基礎値を100％にする
attribute @s minecraft:knockback_resistance base set 1
attribute @s minecraft:explosion_knockback_resistance base set 1
