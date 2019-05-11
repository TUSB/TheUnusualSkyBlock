##############################
### 目線の高さの値を返す
##############################

### 値取得
execute at 1-0-0-0-0 run scoreboard players operation $Result EyeHeight = @e[distance=0,tag=DataHolder,limit=1] EyeHeight
