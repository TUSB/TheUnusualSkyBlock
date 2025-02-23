#> main:load
##############################
### ロード処理
##############################

###スコアボードが作られていなければスコアボードを初期化する
scoreboard objectives add Count dummy {"text":"カウント"}
# execute unless score $Tick Count matches 0.. run function main:load_once
