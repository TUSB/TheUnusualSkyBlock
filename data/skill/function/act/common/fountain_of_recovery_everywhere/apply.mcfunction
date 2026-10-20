##############################
### どこでも回復の泉の効果を実行者に適用
##############################

#MP回復量
scoreboard players set _ _ 50

#MP回復
scoreboard players operation @s MP += _ _
scoreboard players operation @s MP < @s MPMax
function player:mp_bar/set

#通常デバフ除去
function skill:act/white_mage/clear/cure/level2

#リジェネ1分間付与
effect give @s minecraft:regeneration 60 0 false
