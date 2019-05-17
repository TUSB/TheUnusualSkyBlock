##############################
### ロード処理
##############################

###スコアボードが作られていなければスコアボードを初期化する
scoreboard objectives add Const dummy {"text":"定数"}
execute unless score $-1 Const matches -1 run function special:load_once
tellraw @a[tag=Debug] {"text":"*LOADED*"}
