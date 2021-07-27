##############################
### 火遁発動
##############################

#初回適用
function skill:act/ninja/katon/apply
#火遁
execute if score _ Level matches 1 run scoreboard players set @s Katon 180
tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"火遁","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"炎上中の活動能力が大幅に上昇する。"},"color":"white"}}]}]
#ファイアアフィニティ:1000～1180
execute if score _ Level matches 2 run scoreboard players set @s Katon 1180
execute if score _ Level matches 2 run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"炎上中に体力が徐々に回復する。"},"color":"white"}}]}]
#演出
function makeup:skill/act/ninja/katon/act0
