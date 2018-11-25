##############################
### スニーク表示切替
##############################

### スニーク表示タグトグル
execute store success score $Success Global run tag @s add SuppressSettings
execute if score $Success Global matches 0 run tag @s remove SuppressSettings

### メッセージ
tellraw @s[tag=!SuppressSettings] {"translate":"[INFO] スニークによる設定表示を %1$s にしました。","color":"white","with":[{"text":"ON","bold":true,"color":"aqua"}]}
tellraw @s[tag=SuppressSettings] {"translate":"[INFO] スニークによる設定表示を %1$s にしました。","color":"white","with":[{"text":"OFF","bold":true,"color":"light_purple"}]}
