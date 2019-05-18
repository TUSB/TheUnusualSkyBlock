##############################
### 姿勢再現
##############################

### コピーエンティティの場合は寿命を設定(1秒)
execute at 1-0-0-0-1 run scoreboard players set @e[distance=0,tag=DataHolder,tag=Copy,limit=1] GlobalCSTimer -100

### 位置
execute if entity @s[tag=Bullet] at 1-0-0-0-1 run data modify entity 1-0-1-0-0 Pos set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EyePosition
execute if entity @s[tag=!Bullet] at 1-0-0-0-1 run data modify entity 1-0-1-0-0 Pos set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.EntityData.Pos

### 距離捕捉
scoreboard players set $Result Distance 0
execute if entity @s[tag=Destination.Update] positioned as 1-0-1-0-0 run function calc_manager:distance/magnitude
