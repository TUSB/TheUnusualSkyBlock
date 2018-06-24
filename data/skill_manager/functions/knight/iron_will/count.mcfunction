##############################
### アイアンウィル経過
##############################

### 1tick経過
scoreboard players remove @s IronWill 1

###効果切れメッセージ
execute if score @s IronWill matches ..0 run tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={IronWill=..0}] IronWill
