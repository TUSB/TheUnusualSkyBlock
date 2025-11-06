#> skill:act/hunter/chain_arrow/act1
#
# チェインアロー適応

# タグ付与
tag @s add Skill
tag @s add ChainArrow

# ダメージをセーブ
function skill:damage/save

# レベル保存
scoreboard players operation @s Level = _ Level
