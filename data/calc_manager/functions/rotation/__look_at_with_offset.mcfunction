##############################
### ターゲットへ補正付きで向かせる
##############################

### 向き読み込み
execute store result score $_ RotateOffset run data get entity @e[distance=0,tag=DataHolder,limit=1] Rotation[0] 100
execute store result score $_ TiltOffset run data get entity @e[distance=0,tag=DataHolder,limit=1] Rotation[1] 100

### 向きセット
execute store result entity @e[distance=0,tag=DataHolder,limit=1] Rotation[0] float 0.01 run scoreboard players operation $_ RotateOffset += @s RotateOffset
execute store result entity @e[distance=0,tag=DataHolder,limit=1] Rotation[1] float 0.01 run scoreboard players operation $_ TiltOffset += @s TiltOffset

### 向きエンティティに保存
execute rotated as @e[distance=0,tag=DataHolder,limit=1] positioned 0.0 0.0 0.0 run tp 0-0-0-0-10 ~ ~ ~ ~ ~
