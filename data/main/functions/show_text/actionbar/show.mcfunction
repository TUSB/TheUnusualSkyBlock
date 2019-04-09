##############################
### 位置を調整してアクションバー表示
##############################

scoreboard players operation $Width Global = $TextLength Global
scoreboard players operation $Width Global /= $12 Const
# execute if score $Width Global matches 1.. run scoreboard players remove $Width Global 1

execute if score @s TitleOffset matches ..-1 run scoreboard players operation $Width Global *= $-1 Const
execute if score @s TitleOffset matches ..-1 run scoreboard players operation $Width Global > @s TitleOffset
execute if score @s TitleOffset matches 1.. run scoreboard players operation $Width Global < @s TitleOffset

scoreboard players operation @s TitleOffset -= $Width Global

execute if score @s TitleOffset matches ..-10 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -9 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -8 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -7 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -6 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -5 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -4 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -3 run title @s actionbar {"translate":"%1$s %2$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -2 run title @s actionbar {"translate":"%1$s %2$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches -1 run title @s actionbar {"translate":"%1$s %2$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 0 run title @s actionbar {"translate":"%1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 1 run title @s actionbar {"translate":"%2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 2 run title @s actionbar {"translate":"%2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 3 run title @s actionbar {"translate":"%2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 4 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 5 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 6 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 7 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 8 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 9 run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}
execute if score @s TitleOffset matches 10.. run title @s actionbar {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"selector":"0-0-0-0-10"},{"text":"                   "}]}

scoreboard players operation @s TitleOffset += $Width Global
