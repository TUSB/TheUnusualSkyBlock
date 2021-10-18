
### セイクリッドピラー接地

execute if score @s ElementLight matches 1.. run function skill:act/white_mage/sacred_pillar/success
execute if score @s ElementLight matches ..0 run function makeup:skill/act/white_mage/sacred_pillar/failure
