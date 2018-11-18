##############################
### ダメージパーティクル表示切替
##############################

### ダメージ抑制タグトグル
execute store success score $Success Global run tag @s add SuppressIndicator
execute if score $Success Global matches 0 run tag @s remove SuppressIndicator

### メッセージ
tellraw @s[tag=!SuppressIndicator] {"translate":"[INFO] ダメージパーティクルを %1$s にしました。","color":"white","with":[{"text":"ON","bold":true}]}
tellraw @s[tag=SuppressIndicator] {"translate":"[INFO] ダメージパーティクルを %1$s にしました。","color":"white","with":[{"text":"OFF","bold":true}]}
