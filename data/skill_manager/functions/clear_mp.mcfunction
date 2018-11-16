##############################
### MP表示スッキリ
##############################

### MP一時保存
execute as @a run scoreboard players operation @s MPConsumption = @s MP
execute as @a run scoreboard players operation @s MPConsumption *= $-1 Const
### MPリセット
scoreboard players reset * MP
