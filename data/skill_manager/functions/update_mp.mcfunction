##############################
### MP更新
##############################

### 50-150 3000で1回復
scoreboard players remove @s MPHealingWait 50
scoreboard players operation @s MPHealingWait -= @s Level
### 0でMP1回復
execute if score @s MPHealingWait matches ..0 run scoreboard players remove @s MPConsumption 1
### MPウェイトリセット
scoreboard players add @s[scores={MPHealingWait=..0}] MPHealingWait 3000

### MP消費(回復)反映
execute if entity @s[nbt={ActiveEffects:[{Id:17b}]}] run scoreboard players operation @s MPConsumption > $0 Const
scoreboard players operation @s MP -= @s MPConsumption
scoreboard players reset @s MPConsumption

### MP上限・下限補正
scoreboard players operation @s MP > $0 Const
scoreboard players operation @s MP < @s MPMax
