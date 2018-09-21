##############################
### MP更新
##############################

### 50-100 1500で1回復
scoreboard players set $CountSum Global 50
scoreboard players operation $CountSum Global += @s Level
execute store result score $Modifier Global run data get entity @s Health 10
scoreboard players operation $Modifier Global < $200 Const
scoreboard players operation $Modifier Global *= $-1 Const
scoreboard players add $Modifier Global 300
scoreboard players operation $CountSum Global *= $Modifier Global
scoreboard players operation $CountSum Global /= $100 Const
scoreboard players operation @s MPHealingWait -= $CountSum Global
### 0でMP1回復
execute if score @s MPHealingWait matches ..0 run scoreboard players remove @s MPConsumption 1
### MPウェイトリセット
scoreboard players add @s[scores={MPHealingWait=..0}] MPHealingWait 1500

### MP消費(回復)反映
execute if entity @s[nbt={ActiveEffects:[{Id:17b}]}] run scoreboard players operation @s MPConsumption > $0 Const
scoreboard players operation @s MP -= @s MPConsumption
scoreboard players reset @s MPConsumption

### MP上限・下限補正
scoreboard players operation @s MP > $0 Const
scoreboard players operation @s MP < @s MPMax
