##############################
### ターゲットとの相対水平向き初期値読み込み
##############################

### ターゲットとの相対水平向き(中央値と振れ幅を取得)
execute store result score $Result Local at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.StartDirection.RotateOffset.Mean 100
execute store result score $Range Random at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.MoveSettings.StartDirection.RotateOffset.Range 100

### MinとRangeに変換(最小値と振れ幅の２倍)
scoreboard players operation $Result Local -= $Range Random
scoreboard players operation $Range Random += $Range Random
### 乱数取得
function calc_manager:random/range
### 結果に加算
scoreboard players operation $Result Local += $Result Random

### 代入
scoreboard players operation @s RotateOffset = $Result Local

### 0なら規定値設定
execute if score @s RotateOffset matches 0 run function behaviour_manager:definition_reader/moves/start_direction/rotate_offset/default
