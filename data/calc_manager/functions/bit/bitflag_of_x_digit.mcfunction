##############################
### Digit桁目だけにBitが立っているBitFlagを返す
##############################

### Digit桁目ということはDigit-1乗
scoreboard players operation $Power Global = $Digit Global
scoreboard players remove $Power Global 1
### 2の乗数と設定
scoreboard players set $Base Global 2

### 累乗する
function calc_manager:power/value

### 累乗した値を詰める
scoreboard players operation $BitFlag Global = $PoweredValue Global
