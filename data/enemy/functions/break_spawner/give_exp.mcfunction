
# _ Expに与える経験値の数を記録して経験値取得処理を実行する。
scoreboard players operation _ Exp = _ _
execute as @a[distance=..8,limit=1,sort=nearest] at @s run function job:exp/get
