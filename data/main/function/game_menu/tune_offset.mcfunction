#> main:game_menu/tune_offset
### テキスト表示位置調整

execute if score @s ChangeSettings matches 13 run scoreboard players remove @s TitleOffset 1
execute if score @s ChangeSettings matches 14 run scoreboard players add @s TitleOffset 1
scoreboard players set _ _ -10
scoreboard players operation @s TitleOffset > _ _
scoreboard players set _ _ 10
scoreboard players operation @s TitleOffset < _ _

data modify storage calc: Text set value '{"translate":"ここに表示","color":"yellow"}'
title @s times 0 40 20

execute if score @s TitleOffset matches ..-10 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -9 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -8 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -7 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -6 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -5 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -4 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -3 run title @s actionbar {"translate":"%1$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -2 run title @s actionbar {"translate":"%1$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches -1 run title @s actionbar {"translate":"%1$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 0 run title @s actionbar {"translate":"%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 1 run title @s actionbar {"translate":"%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 2 run title @s actionbar {"translate":"%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 3 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 4 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 5 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 6 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 7 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 8 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 9 run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}
execute if score @s TitleOffset matches 10.. run title @s actionbar {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"                   "}]}

execute if score @s TitleOffset matches ..-10 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -9 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -8 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -7 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -6 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -5 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -4 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -3 run title @s subtitle {"translate":"%1$s←%2$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -2 run title @s subtitle {"translate":"%1$s←%2$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -1 run title @s subtitle {"translate":"%1$s←%2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 0 run title @s subtitle {"translate":"%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 1 run title @s subtitle {"translate":"%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 2 run title @s subtitle {"translate":"%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 3 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 4 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 5 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 6 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 7 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 8 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 9 run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 10.. run title @s subtitle {"translate":"%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%2$s→%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
title @s title ""
