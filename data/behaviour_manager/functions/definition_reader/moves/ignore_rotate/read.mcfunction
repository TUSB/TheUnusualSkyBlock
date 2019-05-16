##############################
### 水平回転無視設定読み込み
##############################

### 設定リセット
tag @s remove Ignore.Rotate

### 軽量設定
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Ignore:[Rotate]}}}}}] run tag @s add Ignore.Rotate

### それ以外は規定値
