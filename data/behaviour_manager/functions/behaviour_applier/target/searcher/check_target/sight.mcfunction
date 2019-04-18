##############################
### ターゲット可能かどうか確認
### その４.見えるか
##############################

### 見えるか確認
execute positioned as 0-0-2-0-1 run function calc_manager:sight/thickness
execute unless score $Result BlockThickness matches 1.. run scoreboard players operation $_ TargetID = @s ManagedDataID
