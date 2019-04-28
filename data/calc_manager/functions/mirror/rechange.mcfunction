##############################
### 鏡像逆変換
##############################

### Usage: execute as [Source] facing [Mirror(Normal Vector)] run function this
### Returns: set the position of [Source] to the mirror image changed position

### 鏡を用意
execute in overworld run tp 0-0-0-0-30 ~ ~ ~ ~ ~

### 位置ベクトルを鏡像変換
execute at 0-0-0-0-30 positioned ^ ^ ^-2048 facing entity @s feet positioned ^ ^ ^2048 rotated as 0-0-0-0-30 positioned ^ ^1024 ^ facing entity @s feet positioned ^ ^ ^-1024 rotated as 0-0-0-0-30 positioned ^ ^-2048 ^ run tp @s ~ ~ ~
### 鏡を戻す
execute positioned 0.0 0.0 0.0 in overworld run tp 0-0-0-0-30 ~ ~ ~ ~ ~
