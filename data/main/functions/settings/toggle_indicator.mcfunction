##############################
### パーティクル表示切替
##############################

### ダメージパーティクル
### オーラパーティクル

### 抑制タグトグル
execute store success score $Success Global run tag @s add SuppressParticle
execute if score $Success Global matches 0 run tag @s remove SuppressParticle

### メッセージ
tellraw @s[tag=!SuppressParticle] {"translate":"[INFO] パーティクル抑制を %1$s にしました。","color":"white","with":[{"text":"OFF","bold":true,"color":"light_purple"}]}
tellraw @s[tag=SuppressParticle] {"translate":"[INFO] パーティクル抑制を %1$s にしました。","color":"white","with":[{"text":"ON","bold":true,"color":"aqua"}]}
