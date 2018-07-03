##############################
### タクティカルヒール発動
##############################

###---演出---Start
###---演出---End

execute if score @s SupportSkill matches 12051 run scoreboard players set @s[] TacticalHeal 100
execute if score @s SupportSkill matches 12052 run scoreboard players set @s[] TacticalHeal 140
execute if score @s SupportSkill matches 12053 run scoreboard players set @s[] TacticalHeal 200

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"タクティカルヒール","color":"white","hoverEvent":{"action":"show_text","value":"大ダメージを受けた時、体力を大きく回復する。","color":"white"}},"の効果！"]
