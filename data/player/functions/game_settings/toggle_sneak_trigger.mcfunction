
###スニーク表示切替

#表示タグトグル
execute store success score _ _ run tag @s add SuppressSettings
execute if score _ _ matches 0 run tag @s remove SuppressSettings

#メッセージ
tellraw @s[tag=!SuppressSettings] [{"translate":"[INFO] スニークによる設定表示を%1$sにしました。","with":[{"translate":"ON","bold": true,"color": "aqua"}]}]
tellraw @s[tag=SuppressSettings] [{"translate":"[INFO] スニークによる設定表示を%1$sにしました。","with":[{"translate":"OFF","bold": true,"color": "light_purple"}]}]
