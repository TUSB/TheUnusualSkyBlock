#> skill:act/knight/iron_will/tick
#
# アイアンウィル経過

# 1tick経過
scoreboard players remove @s IronWill 1

# 効果時間が残っていれば継続
execute unless score @s IronWill matches ..0 run return fail

# 効果切れメッセージと終了処理
tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]

attribute @s minecraft:knockback_resistance base set 0
attribute @s minecraft:explosion_knockback_resistance base set 0

scoreboard players reset @s IronWill

function makeup:skill/act/knight/iron_will/end
