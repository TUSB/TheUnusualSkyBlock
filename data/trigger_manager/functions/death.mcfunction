##############################
### 死亡時処理
##############################

### 状態異常回復
function skill_manager:white_mage/clear/cure/level4
scoreboard players operation @s ResistEffects < @s ResistMin

### 忍者＜サヨナラ＞
execute if score @s ModeSkill matches 21061..21069 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### レイズ処理
tag @s[tag=Reraise] add Raise
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise

### 呪詛処理
execute if entity @s[tag=Curse] run function effect_manager:curse/death

### 死亡トリガーリセット
execute store result score @s Hunger run data get entity @s foodLevel
scoreboard players reset @s Deaths

### 進捗処理
execute if entity @s[y=-64,dy=-1024,advancements={advancement_manager:common/void_death=false}] run advancement grant @s only advancement_manager:common/void_death
execute if entity @s[x=-288,z=-3296,dx=639,dz=1311,advancements={advancement_manager:table_mountain/death=false}] run advancement grant @s only advancement_manager:table_mountain/death