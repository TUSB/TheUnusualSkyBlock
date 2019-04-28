##############################
### ターゲット可能かどうか確認
### その４.見えるか
##############################

### 検知タイプがSightの時だけブロック厚さ判定
scoreboard players set $Result BlockThickness 0
execute if score $_ DetectType matches 2.. at 0-0-2-0-1 anchored eyes positioned ^ ^ ^ anchored feet run function calc_manager:sight/thickness

### 見える時、ターゲットID設定
execute unless score $Result BlockThickness matches 1.. run scoreboard players operation $_ TargetID = @s ManagedDataID
