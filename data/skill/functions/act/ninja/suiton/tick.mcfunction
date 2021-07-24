##############################
### 水遁継続
##############################

#適用 TODO:waterloggedのTagつくる
execute anchored eyes if block ^ ^ ^ minecraft:water run function skill:act/ninja/suiton/apply
#ウォータアフィニティ 1000で終了
execute store success score @s[scores={Suiton=1000}] Suiton run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ウォーターアフィニティ","color":"white","hoverEvent":{"action":"show_text","value":"潜水中に体力が徐々に回復する。","color":"white"}},"の効果が切れた。"]
scoreboard players remove @s Suiton 1
#水遁 0で終了
execute if score @s Suiton matches ..0 run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"水遁","color":"white","hoverEvent":{"action":"show_text","value":"潜水中の活動能力が大幅に上昇する。","color":"white"}},"の効果が切れた。"]
scoreboard players reset @s[scores={Suiton=..0}] Suiton
