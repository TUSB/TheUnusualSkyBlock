##############################
### アイサツ発動
##############################

#モブの数を取得
execute store result score @s Aisatsu if entity @e[distance=..30,tag=Enemy]
#アイサツ
execute if score @s Aisatsu matches 0 run tellraw @a [{"translate":"ドーモ。%1$sです","with":[{"selector":"@s"}]}]
execute if score @s Aisatsu matches 1.. run tellraw @a [{"translate":"ドーモ。%1$s=サン。%2$sです。","with":[{"selector":"@e[distance=..30,tag=Enemy,sort=nearest]","color":"red"},{"selector":"@s"}]}]
execute if score @s Aisatsu matches 1.. run tellraw @s [{"translate":"%1$sに%2$sの効果！","color":"green","with":[{"selector":"@s","color":"white"},{"translate":"アイサツ","color":"white","hoverEvent":{"action":"show_text","value":{"translate":"アイサツした敵の数に応じて、次に使うスキルの消費MPが減少する。"},"color":"white"}}]}]
#次の消費MP軽減量を計算
execute if score _ Level matches 1 run scoreboard players set _ _ 3
execute if score _ Level matches 2 run scoreboard players set _ _ 5
scoreboard players operation @s Aisatsu *= _ _
#演出
function makeup:skill/act/ninja/aisatsu/act0
