#> calc:show_text/subtitle
##############################
### 位置を調整してサブタイトル表示
##############################

#Width
execute store result score _ TitleOffset run data get storage calc: TextLength
scoreboard players set _ _ 6
scoreboard players operation _ TitleOffset /= _ _

scoreboard players set _ _ -1
execute if score @s TitleOffset matches ..-1 run scoreboard players operation _ TitleOffset *= _ _
execute if score @s TitleOffset matches ..-1 run scoreboard players operation _ TitleOffset > @s TitleOffset
execute if score @s TitleOffset matches 1.. run scoreboard players operation _ TitleOffset < @s TitleOffset

scoreboard players operation @s TitleOffset -= _ TitleOffset

execute if score @s TitleOffset matches ..-10 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -9 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -8 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -7 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -6 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -5 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -4 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -3 run title @s subtitle {"translate":"%1$s %2$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -2 run title @s subtitle {"translate":"%1$s %2$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches -1 run title @s subtitle {"translate":"%1$s %2$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 0 run title @s subtitle {"translate":"%1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 1 run title @s subtitle {"translate":"%2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 2 run title @s subtitle {"translate":"%2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 3 run title @s subtitle {"translate":"%2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 4 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 5 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 6 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 7 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 8 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 9 run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
execute if score @s TitleOffset matches 10.. run title @s subtitle {"translate":"%2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %2$s %1$s","with":[{"storage":"calc:","nbt":"Text","interpret":true},{"text":"         "}]}
title @s title ""

scoreboard players operation @s TitleOffset += _ TitleOffset
scoreboard players reset __ _
