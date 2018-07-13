##############################
### ワイルドフレアダメージ&演出
##############################

###要らないタグ削除
tag @s[tag=FlyingRequired] remove FlyingRequired

###ダメージ付与
scoreboard players operation @e[distance=..5,tag=Mob] Damage += @s SkillAttribute
###水中削除
kill @s[nbt={Fire:0s}]
###---演出---Start
particle minecraft:flame ~ ~ ~ 2 1 2 0.01 1 force
###---演出---End
