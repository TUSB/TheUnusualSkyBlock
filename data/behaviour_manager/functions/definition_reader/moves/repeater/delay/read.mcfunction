##############################
### インターポレーター開始時間設定
##############################

### 開始時間(cs)(中央値と振れ幅を取得)
execute store result score $Result Local run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMoves[0].Repeater.Delay.Mean 100
execute store result score $Range Random run data get entity @s Passengers[{Tags:[Parameter]}].Item.tag.DefineMoves[0].Repeater.Delay.Range 100

### MinとRangeに変換(最小値と振れ幅の２倍)
scoreboard players operation $Result Local -= $Range Random
scoreboard players operation $Range Random += $Range Random
### 乱数取得
function calc_manager:random/range
### 結果に加算
scoreboard players operation $Result Local += $Result Random

### 代入
scoreboard players operation @s RepeaterDelay = $Result Local

### 0なら規定値設定
execute if score @s RepeaterDelay matches 0 run function behaviour_manager:definition_reader/moves/repeater/delay/default
