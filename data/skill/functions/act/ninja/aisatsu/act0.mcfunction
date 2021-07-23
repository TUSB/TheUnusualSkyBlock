##############################
### アイサツ発動
##############################

#モブの数を取得
execute store result score @s Aisatsu if entity @e[distance=..30,tag=Mob]
#アイサツ
execute if score @s Aisatsu matches 0 run tellraw @a ["ドーモ。",{"selector":"@s"},"です"]
execute if score @s Aisatsu matches 1.. run tellraw @a ["ドーモ。",{"selector":"@e[distance=..30,tag=Mob,sort=nearest]","color":"red"},"＝サン。",{"selector":"@s"},"です"]
execute if score @s Aisatsu matches 1.. run tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイサツ","color":"white","hoverEvent":{"action":"show_text","value":"アイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。","color":"white"}},"の効果！"]
#次の消費MP軽減量を計算
execute if score _ Level matches 1 run scoreboard players set _ _ 3
execute if score _ Level matches 2 run scoreboard players set _ _ 5
scoreboard players operation @s Aisatsu *= _ _
#演出
function makeup:skill/act/ninja/aisatsu/act0
