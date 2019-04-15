##############################
### インターポレーター終了時間乱数遅延適用後規定値
##############################

### 規定値はStart+Result(Range)
scoreboard players operation @s ItrpDirToStart = @s ItrpDirStart
scoreboard players operation $Range Random = @s ItrpDirRanDelay
function calc_manager:random/range
scoreboard players operation @s ItrpDirToStart += $Result Random
