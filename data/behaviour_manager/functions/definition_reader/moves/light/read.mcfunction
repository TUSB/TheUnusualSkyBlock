##############################
### 軽量設定読み込み
##############################

### 設定リセット
tag @s remove LightMove

### 軽量設定
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{MoveSettings:{LightMove:On}}}}}] run tag @s add LightMove

### それ以外は規定値
