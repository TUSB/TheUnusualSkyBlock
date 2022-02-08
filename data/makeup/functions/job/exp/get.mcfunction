
##獲得メッセージ
##ボーナスがあればボーナスも表示する
execute as @a[distance=..50] if score @s _ = _ Exp run tag @s add NoExpBonus

#ボーナスの経験値量を取得
execute as @a[distance=..50] if score @s _ > _ Exp run tag @s add GetExpBonus
execute as @a[tag=GetExpBonus] run scoreboard players operation @s Calc = @s _
execute as @a[tag=GetExpBonus] run scoreboard players operation @s Calc -= _ Exp

execute if entity @a[tag=NoExpBonus] run tellraw @a [{"translate":"%1$s は %2$s経験値を得た！","with": [{"selector": "@a[tag=NoExpBonus]"},{"score":{"name": "@s","objective": "_"},"color": "green"}]}]
execute as @a[tag=GetExpBonus] run tellraw @a [{"translate":"%1$s は %2$s経験値とボーナスとして %3$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "_","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "Calc"},"color": "gold"}]}]

#範囲外のプレイヤー
execute if entity @a[distance=51..] run tellraw @a [{"translate":"%1$s は 離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[distance=51..]"}]}]

tag @a[tag=NoExpBonus] remove NoExpBonus
tag @a[tag=GetExpBonus] remove GetExpBonus

#サウンド
execute as @a[distance=..50] at @s run playsound minecraft:tusb.levelup master @s ~ ~64 ~ 8 2
