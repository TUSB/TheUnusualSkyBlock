#> skill:act/white_mage/over_heal/act0
#
# オーバーヒール発動
function skill:act/white_mage/over_heal/apply
# スニーク時、他プレイヤーにも付与
execute if score @s SneakTime matches 1.. as @a[distance=0.1..10] at @s run function skill:act/white_mage/over_heal/sneak
