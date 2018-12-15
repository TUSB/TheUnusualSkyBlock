##############################
### ブリッツマニューバ処理
##############################

scoreboard players remove @s BlitzManover 1
execute if score @s BlitzManover matches 900..1000 run scoreboard players set @s BlitzManover 0

execute unless score @s BlitzManover matches 0.. run tellraw @s [{"text":"","color":"yellow"},{"selector":"@s"},"の",{"text":"ブリッツマニューバ","color":"white","hoverEvent":{"action":"show_text","value":"次に使用するスキルの\nスキル使用不能時間を0にする。","color":"white"}},"の効果が切れた。"]
execute unless score @s BlitzManover matches 0.. run scoreboard players reset @s BlitzManover

###---演出---Start
execute rotated as @e[limit=1,sort=random] rotated ~ 0 run particle minecraft:dust 1 100000000 -10000000 1.5 ^ ^0.2 ^2.5 1 0 0 1 4 force @a[tag=ShowParticles]
execute rotated as @e[limit=1,sort=random] rotated ~ 0 run particle minecraft:dust 1 100000000 -10000000 1.5 ^ ^0.2 ^2.5 0 0 1 1 4 force @a[tag=ShowParticles]
###---演出---End
