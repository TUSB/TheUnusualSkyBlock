##############################
### ロード処理
##############################

###スコアボードが作られていなければスコアボードを初期化する
scoreboard objectives add Count dummy {"text":"カウント"}
execute unless score $Second Count matches 1.. run function main:load_once
