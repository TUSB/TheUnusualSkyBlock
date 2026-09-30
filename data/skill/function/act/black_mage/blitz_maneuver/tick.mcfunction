#> skill:act/black_mage/blitz_maneuver/tick
#
# ブリッツマニューバ毎tick処理

scoreboard players remove @s BlitzManeuver 1
execute if score @s BlitzManeuver matches 900..1000 run scoreboard players set @s BlitzManeuver 0

# execute unless score @s BlitzManeuver matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ブリッツマニューバ","color":"white","hoverEvent":{"action":"show_text","value":"次に使用するスキルの\nスキル使用不能時間を0にする。","color":"white"}},"の効果が切れた。"]
execute unless score @s BlitzManeuver matches 0.. run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"storage":"skill:","nbt":"Data.BlackMage[{Name:\"ブリッツマニューバ\",Level:1}].Name","hoverEvent":{"action":"show_text","contents":[{"storage":"skill:","nbt":"Data.BlackMage[{Name:\"ブリッツマニューバ\",Level:1}].Lore[]","interpret":true}]},"color":"white"}]}]
execute unless score @s BlitzManeuver matches 0.. run scoreboard players reset @s BlitzManeuver

# 演出
function makeup:skill/act/black_mage/blitz_maneuver/tick
