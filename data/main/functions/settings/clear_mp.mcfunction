##############################
### MP表示スッキリ
##############################

### MP一時保存
execute as @a run scoreboard players operation @s MPConsumption = @s MP
execute as @a run scoreboard players operation @s MPConsumption *= $-1 Const

### バースト保存
scoreboard players operation #Aura Global = #Aura MP
scoreboard players operation バースト Global = バースト MP

### MPリセット
scoreboard players reset * MP

### バースト読み込み
scoreboard players operation #Aura MP = #Aura Global
scoreboard players operation バースト MP = バースト Global

tellraw @a {"text":"[INFO] MP表示をリセットしました。","color":"white"}
