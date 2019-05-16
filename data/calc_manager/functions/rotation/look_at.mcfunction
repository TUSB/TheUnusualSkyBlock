##############################
### ターゲットへ向かせる
##############################

### Usage: execute as [Source] at @s positioned as [Destination] run function this

### 向かせる
execute facing entity @s feet facing ^ ^ ^-1 in overworld positioned as 1-0-0-0-0 run tp @e[distance=0,tag=DataHolder,limit=1] ~ ~ ~ ~ ~

### 向きエンティティに保存
execute at 1-0-0-0-0 rotated as @e[distance=0,tag=DataHolder,limit=1] positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~
