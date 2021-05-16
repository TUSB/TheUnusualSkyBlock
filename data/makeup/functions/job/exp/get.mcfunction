
#獲得メッセージ
#ボーナスがあればボーナスも表示する
execute if score @s _ > _ Exp run scoreboard players operation @s Calc = @s _
execute if score @s _ > _ Exp run scoreboard players operation @s Calc -= _ Exp

execute as @a if score @s _ = _ Exp run tellraw @s [{"translate":"%1$s は %2$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "@s","objective": "_"},"color": "green"}]}]
execute as @a unless score @s _ = _ Exp run tellraw @s [{"translate":"%1$s は %2$s経験値とボーナスとして %3$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "_","objective": "Exp"},"color": "green"},{"score":{"name": "@s","objective": "Calc"},"color": "gold"}]}]

#サウンド
execute as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~64 ~ 16 2
