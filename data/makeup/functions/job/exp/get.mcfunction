
#獲得メッセージ
#ボーナスがあればボーナスも表示する
execute if score @s[distance=..50] _ > _ Exp run scoreboard players operation @s Calc = @s _
execute if score @s[distance=..50] _ > _ Exp run scoreboard players operation @s Calc -= _ Exp

execute if score @s[distance=..50] _ = _ Exp run tellraw @a [{"translate":"%1$s は %2$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "@s","objective": "_"},"color": "green"}]}]
execute unless score @s[distance=..50] _ = _ Exp run tellraw @a [{"translate":"%1$s は %2$s経験値とボーナスとして %3$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "_","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "Calc"},"color": "gold"}]}]

#範囲外のプレイヤー
execute unless entity @s[distance=..50] run tellraw @a [{"translate":"%1$s は 離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@s"}]}]

#サウンド
execute if entity @s[distance=..50] at @s run playsound minecraft:entity.player.levelup master @s ~ ~64 ~ 16 2
