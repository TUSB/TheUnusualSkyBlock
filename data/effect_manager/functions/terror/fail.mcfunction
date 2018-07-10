##############################
### 発動失敗処理
##############################

tellraw @a [{"text":"","color":"yellow"},{"selector":"@s"},"は",{"text":"恐怖","color":"white","hoverEvent":{"action":"show_text","value":"スキルが発動しにくくなる。","color":"white"}},"している！"]
playsound minecraft:entity.spider.hurt master @a[distance=..16] ~ ~ ~ 2 0.5
scoreboard players reset @s SupportSkill
scoreboard players reset @s ActiveSkill
