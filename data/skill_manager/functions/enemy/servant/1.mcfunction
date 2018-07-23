##############################
### サモンＰ：サーヴァントスキル１つ目
##############################

execute store result score $TargetCount Global if entity @e[distance=..5,tag=Mob,nbt=!{ActiveEffects:[{Id:18b}]}]
effect give @e[distance=..5,tag=Mob,nbt=!{ActiveEffects:[{Id:18b}]}] minecraft:weakness 1000000 9
execute if score $TargetCount Global matches 0 run me の アブゾーブアタック！…しかし上手くきまらなかった。
execute if score $TargetCount Global matches 1.. run me の アブゾーブアタック！敵の攻撃力を吸収した！
scoreboard players operation $TargetCount Global *= $4000 Const
execute store result score $Attack Global run data get entity @s Attributes[6].Base 100
scoreboard players operation $Attack Global += $TargetCount Global
execute store result entity @s Attributes[6].Base double 0.01 run scoreboard players get $Attack Global
