#> skill:act/hunter/wild_flare/tick
#
# ワイルドフレアダメージ&演出

# ダメージ付与
execute if entity @s[tag=FlyingRequired] if entity @e[distance=..3,tag=Enemy,tag=!WildFlareInterval] run function skill:act/hunter/wild_flare/apply

# 水中削除
kill @s[nbt={Fire:0s}] 

function makeup:skill/act/hunter/wild_flare/tick
