##############################
### 火遁発動
##############################

#初回適用
function skill:act/ninja/katon/apply
#火遁
execute if score _ Level matches 1 run scoreboard players set @s Katon 180
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"火遁","color":"white","hoverEvent":{"action":"show_text","value":"炎上中の活動能力が大幅に上昇する。","color":"white"}},"の効果！"]
#ファイアアフィニティ:1000～1180
execute if score _ Level matches 2 run scoreboard players set @s Katon 1180
execute if score _ Level matches 2 run tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"ファイアアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"炎上中に体力が徐々に回復する。","color":"white"}},"の効果！"]
#演出
function makeup:skill/act/ninja/katon/act0
