##############################
### MP更新
##############################

### スキル使ったらスキル変更やさしさシステム解除
execute if score @s MPConsumption matches 1.. run tag @s remove SuppressLimit

### 50-100 2500で1回復
scoreboard players operation $CountSum Global = @s Level
scoreboard players operation $CountSum Global < $50 Const
scoreboard players add $CountSum Global 50
# ### 体力を30倍で取得、600以下(体力１列分)にして700から引くことで100-700の割合を取る
# execute store result score $Modifier Global run data get entity @s Health 30
# scoreboard players operation $Modifier Global < $600 Const
# scoreboard players operation $Modifier Global *= $-1 Const
# scoreboard players add $Modifier Global 700
# ### *1~*7
# scoreboard players operation $CountSum Global *= $Modifier Global
# scoreboard players operation $CountSum Global /= $100 Const
### 適用
scoreboard players operation @s MPHealingWait -= $CountSum Global

### 0でMP1回復
execute if score @s MPHealingWait matches ..0 run function skill_manager:update_mp_wait
### マナリフレッシュカウントダウン
scoreboard players remove @s[scores={ManaRefresh=50..}] ManaRefresh 50
scoreboard players reset @s[scores={ManaRefresh=..50}] ManaRefresh

### MP消費(回復)反映
execute if entity @s[nbt={ActiveEffects:[{Id:17b}]}] run scoreboard players operation @s MPConsumption > $0 Const
scoreboard players operation @s MP -= @s MPConsumption
scoreboard players reset @s MPConsumption

### MP上限・下限補正
scoreboard players operation @s MP > $0 Const
scoreboard players operation @s MP < @s MPMax
