##############################
### 位置前に補正
##############################

### 鏡を用意
execute positioned ^ ^ ^-1 positioned ~ ~1 ~ facing entity @s feet positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-30 ~ ~ ~ ~ ~

### 上に補正
function calc_manager:move/upward

### 前に補正
execute rotated as 0-0-0-0-30 run function calc_manager:mirror/change
