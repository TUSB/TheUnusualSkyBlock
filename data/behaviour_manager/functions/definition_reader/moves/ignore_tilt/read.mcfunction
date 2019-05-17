##############################
### 垂直回転無視設定読み込み
##############################

### 設定リセット
tag @s remove Ignore.Tilt

### 軽量設定
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{Ignore:[Tilt]}}}}}] run tag @s add Ignore.Tilt

### それ以外は規定値
