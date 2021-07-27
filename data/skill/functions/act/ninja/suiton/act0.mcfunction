##############################
### 水遁発動
##############################

#初回適用
function skill:act/ninja/suiton/apply
#水遁
execute if score _ Level matches 1 run scoreboard players set @s Suiton 180
tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"水遁","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"潜水中の活動能力が大幅に上昇する。"},"color":"white"}}]}]
#ウォータアフィニティ:1000～1180
execute if score _ Level matches 2 run scoreboard players set @s Suiton 1180
execute if score _ Level matches 2 run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"ウォータアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"潜水中に体力が徐々に回復する。"},"color":"white"}}]}]
#演出
function makeup:skill/act/ninja/suiton/act0
