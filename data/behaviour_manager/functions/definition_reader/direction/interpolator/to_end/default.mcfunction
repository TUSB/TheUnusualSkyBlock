##############################
### インターポレーター終了時間乱数遅延適用後規定値
##############################

### 規定値はEnd+Result(Range)
### 乱数更新はしない
scoreboard players operation @s ItrpDirToEnd = @s ItrpDirEnd
scoreboard players operation @s ItrpDirToEnd += $Result Random
