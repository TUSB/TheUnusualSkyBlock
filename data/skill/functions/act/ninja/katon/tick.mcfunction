##############################
### 火遁継続
##############################

#適用
execute if entity @s[nbt=!{Fire:-20s}] run function skill:act/ninja/katon/apply
#ファイアアフィニティ 1000で終了
execute store success score @s[scores={Katon=1000}] Katon run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"炎上中に体力が徐々に回復する。"},"color":"white"}}]}]
scoreboard players remove @s Katon 1
#火遁 0で終了
execute if score @s Katon matches ..0 run tellraw @s [{"translate":"%1$sの%2$sの効果が切れた。","color":"yellow","with":[{"selector":"@s","color":"white"},{"translate":"火遁","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"炎上中の活動能力が大幅に上昇する。"},"color":"white"}}]}]
scoreboard players reset @s[scores={Katon=..0}] Katon
