#> job:exp/bonus
#追加するボーナスを決定する
#取得量 = ネザースター数 * (1 + 9 * (1 - プレイヤー総獲得経験値 / ワールド総獲得経験値))
#プレイヤーの総獲得経験値は1000倍にして計算する

#(プレイヤーの総獲得経験値 * 1000 / ワールドの総獲得経験値 - 1)
scoreboard players operation @s _ = @s AllExp
scoreboard players set _ _ 1000
scoreboard players operation @s _ *= _ _
scoreboard players operation @s _ /= $World AllExp
scoreboard players remove @s _ 1000
#(((上の式) * -9) / 1000 + 1)
scoreboard players set _ _ -9
scoreboard players operation @s _ *= _ _
scoreboard players set _ _ 1000
scoreboard players operation @s _ /= _ _
scoreboard players add @s _ 1
#((上の式) * ネザースター数)
scoreboard players operation @s _ *= _ Exp
