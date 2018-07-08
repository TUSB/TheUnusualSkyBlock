##############################
### アイサツ発動
##############################

tellraw @a ["ドーモ。",{"selector":"@e[distance=..10,tag=Mob]","color":"red"},{"text":", ","color":"gray"},{"selector":"@e[distance=10..20,tag=Mob]","color":"light_purple"},{"text":", ","color":"gray"},{"selector":"@e[distance=20..30,tag=Mob]","color":"gold"},"＝サン。",{"selector":"@s"},"です"]
tp @s ~ ~ ~ ~ 45
scoreboard players set @s Aisatsu 0
execute at @e[distance=..30,tag=Mob] run scoreboard players add @s Aisatsu 3

###---演出---Start
tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイサツ","color":"white","hoverEvent":{"action":"show_text","value":"アイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","color":"white"}},"の効果！"]
###---演出---End
