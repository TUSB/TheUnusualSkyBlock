
### アイアンウィル経過

### 1tick経過
scoreboard players remove @s IronWill 1

function makeup:skill/act/knight/iron_will/count

###効果切れメッセージ
execute if score @s IronWill matches ..0 run tellraw @a [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s"},{"translate":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"ノックバックしなくなる。","color":"white"}}}]}]
scoreboard players reset @s[scores={IronWill=..0}] IronWill
