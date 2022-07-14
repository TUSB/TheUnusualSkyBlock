
### ワイルドフレアダメージ&演出

###要らないタグ削除
tag @s[tag=FlyingRequired] remove FlyingRequired

###ダメージ付与
execute if entity @e[distance=..5,tag=Enemy] run function skill:damage/load
execute as @e[distance=..5,tag=Enemy] run function skill:damage/apply/
###水中削除
kill @s[nbt={Fire:0s}]

function makeup:skill/act/hunter/wild_flare/tick
