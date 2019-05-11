##############################
### ターゲット検知方法読み込み
##############################

### 前方視線判定なし
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Detect:ByXRay}}}}}] run tag @s add Detect.ByXRay
### 前方視線判定あり
execute at 1-0-0-0-0 if entity @e[distance=0,tag=DataHolder,limit=1,nbt={Item:{tag:{Parameter:{TargetSettings:{Detect:BySight}}}}}] run tag @s add Detect.BySight

### それ以外は規定値
execute if entity @s[tag=!Detect.ByXRay,tag=!Detect.BySight] run function behaviour_manager:definition_reader/target/detect/default
