##############################
### タクティカルヒール発動
##############################

###---演出---Start
playsound minecraft:entity.player.levelup master @a[distance=..16] ~ ~ ~ 0.5 0.55
playsound minecraft:block.anvil.place master @a[distance=..16] ~ ~ ~ 0.3 1
playsound minecraft:entity.spider.hurt master @a[distance=..16] ~ ~ ~ 1 0
particle minecraft:heart ~ ~ ~ 1.5 0 0.2 1 30 force
particle minecraft:heart ~ ~ ~ 0.2 0 1.5 1 30 force
particle minecraft:instant_effect ~ ~0.3 ~ 1 0 1 1 200 force
###---演出---End

execute if score @s SupportSkill matches 12051 run scoreboard players set @s[] TacticalHeal 100
execute if score @s SupportSkill matches 12052 run scoreboard players set @s[] TacticalHeal 140
execute if score @s SupportSkill matches 12053 run scoreboard players set @s[] TacticalHeal 200

tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"タクティカルヒール","color":"white","hoverEvent":{"action":"show_text","value":"大ダメージを受けた時、体力を大きく回復する。","color":"white"}},"の効果！"]
