
###スニーク時処理

#スニーク中   スニークしているときに実行したい処理はこの下に追加
execute if score @s SneakTime matches 3 run scoreboard players add @s SneakTrigger 1


### 設定表示
execute if score @s SneakTrigger matches 200 if entity @s[tag=!SuppressSettings] run function player:game_settings/show


#スニーク解除   スニークし終わったときに実行したい処理はこの下に追加
execute if score @s SneakTime matches ..2 run scoreboard players reset @s SneakTrigger



##スニーク状態取得
scoreboard players set _ _ 2
scoreboard players operation @s SneakTime *= _ _
scoreboard players set _ _ 4
scoreboard players operation @s SneakTime %= _ _
