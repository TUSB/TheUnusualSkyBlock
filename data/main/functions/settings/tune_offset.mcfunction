##############################
### テキスト表示位置調整
##############################

execute if score @s ChangeSettings matches 6 run scoreboard players remove @s TitleOffset 1
execute if score @s ChangeSettings matches 7 run scoreboard players add @s TitleOffset 1
scoreboard players operation @s TitleOffset > $-10 Const
scoreboard players operation @s TitleOffset < $10 Const

data merge entity 0-0-0-0-0 {CustomName:"{\"text\":\"ここに表示\",\"color\":\"yellow\"}"}
title @s times 0 40 20

execute if score @s TitleOffset matches ..-10 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -9 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -8 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -7 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -6 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -5 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -4 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -3 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -2 run title @s actionbar {"translate":"%1$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches -1 run title @s actionbar {"translate":"%1$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 0 run title @s actionbar {"translate":"%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 1 run title @s actionbar {"translate":"%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 2 run title @s actionbar {"translate":"%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 3 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 4 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 5 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 6 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 7 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 8 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 9 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}
execute if score @s TitleOffset matches 10.. run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"                   "}]}

execute if score @s TitleOffset matches ..-10 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -9 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -8 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -7 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -6 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -5 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -4 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -3 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -2 run title @s subtitle {"translate":"%1$s←%2$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches -1 run title @s subtitle {"translate":"%1$s←%2$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 0 run title @s subtitle {"translate":"%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 1 run title @s subtitle {"translate":"%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 2 run title @s subtitle {"translate":"%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 3 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 4 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 5 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 6 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 7 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 8 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 9 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
execute if score @s TitleOffset matches 10.. run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"selector":"0-0-0-0-0"},{"text":"         "}]}
title @s title ""
