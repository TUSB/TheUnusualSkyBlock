##############################
### チェインアロー発動
##############################

#タグ付与
tag @s add Skill
tag @s add ChainArrow
tag @s add NativeTask
#レベル保存
scoreboard players operation @s Level = _ Level
#ダメージ保存
function skill:damage/save
