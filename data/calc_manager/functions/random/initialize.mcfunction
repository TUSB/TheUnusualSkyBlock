##############################
### キャリー付き乗算乱数初期化
##############################

### 乗数設定
scoreboard players set $__Multiplier Random 31743
### 除数設定
scoreboard players set $__Base Random 65536

### 現在値設定
function calc_manager:random/uuid
scoreboard players operation $__Current Random = $UUID Random
scoreboard players operation $__Current Random %= $__Base Random
### キャリー設定
function calc_manager:random/uuid
scoreboard players operation $__Carry Random = $UUID Random
scoreboard players operation $__Carry Random %= $__Base Random
