#> makeup:job/exp/get
##獲得メッセージ
##ボーナスがあればボーナスも表示する

#ボーナスの経験値量を取得
execute as @a[distance=..50] if score @s _ > _ Exp run tag @s add GetExpBonus
execute as @a[tag=GetExpBonus] run scoreboard players operation @s Calc = @s _
execute as @a[tag=GetExpBonus] run scoreboard players operation @s Calc -= _ Exp

execute store result score _ _ if entity @a[distance=..50]
scoreboard players remove _ _ 1
execute if score _ _ matches 0 run tellraw @a [{"translate":"%1$s は %2$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "_","objective": "Exp"},"color": "green"}]}]
execute if score _ _ matches 1.. run tellraw @a [{"translate":"%1$sと%2$s は %3$s経験値を得た！","with": [{"selector": "@s"},{"translate":"他%1$s人","with":[{"score":{"name":"_","objective":"_"}}],"hoverEvent":{"action":"show_text","value":[{"translate":"経験値を得られた人"},"\n",{"selector":"@a[distance=0.1..50]"}]}},{"score":{"name": "_","objective": "Exp"},"color": "green"}]}]

execute as @a[tag=GetExpBonus] run tellraw @s [{"translate":"%1$s は ボーナスとして %2$s経験値を得た！","with": [{"selector": "@s"},{"score":{"name": "@s","objective": "Calc"},"color": "gold"}]}]

#範囲外のプレイヤー
execute store result score _ _ if entity @a[distance=51..]
scoreboard players remove _ _ 1
execute if entity @a[distance=51..] if score _ _ matches 0 run tellraw @a [{"translate":"%1$s は 離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[distance=51..]"}]}]
execute if entity @a[distance=51..] if score _ _ matches 1.. run tellraw @a [{"translate":"%1$sと%2$s は 離れ過ぎていたため、経験値を得られなかった。","color":"red","with":[{"selector":"@a[distance=51..,limit=1]"},{"translate":"他%1$s人","with":[{"score":{"name":"_","objective":"_"}}],"hoverEvent":{"action":"show_text","value":[{"translate":"経験値を得られなかった人"},"\n",{"selector":"@a[distance=51..]"}]}}]}]

tag @a[tag=GetExpBonus] remove GetExpBonus

#サウンド
execute as @a[distance=..50] at @s run playsound minecraft:entity.player.levelup master @s ~ ~64 ~ 8 2
