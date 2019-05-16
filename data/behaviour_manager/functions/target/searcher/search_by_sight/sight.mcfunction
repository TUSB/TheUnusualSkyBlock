##############################
### ターゲット可能かどうか確認
### 見えるか
##############################

### ブロック厚さ判定
execute at 0-0-2-0-1 anchored eyes positioned ^ ^ ^ anchored feet run function calc_manager:sight/thickness

### 見える時、ターゲットID取得
execute unless score $Result BlockThickness matches 1.. run scoreboard players operation $_ TargetID = @s ManagedDataID
