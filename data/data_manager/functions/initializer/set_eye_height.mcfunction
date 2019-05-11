##############################
### データ管理エンティティに目線の高さをセット
##############################

### 目線の高さ計測
execute positioned as @s anchored eyes positioned ^ ^ ^ anchored feet run function calc_manager:distance/height

### 対象のエンティティに保存
execute at 1-0-0-0-0 run scoreboard players operation @e[distance=0,tag=DataHolder,limit=1] EyeHeight = $Result Distance
