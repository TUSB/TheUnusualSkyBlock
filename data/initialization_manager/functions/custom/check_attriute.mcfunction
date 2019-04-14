##############################
### エンティティ属性判定
##############################

### Undead
execute unless entity @e[type=!minecraft:drowned,type=!husk,type=!minecraft:phantom,type=!minecraft:skeleton,type=!minecraft:skeleton_horse,type=!minecraft:stray,type=!minecraft:wither,type=!minecraft:wither_skeleton,type=!minecraft:zombie,type=!minecraft:zombie_horse,type=!minecraft:zombie_pigman,type=!minecraft:zombie_villager] run tag @s add Undead

### Living
tag @s[tag=!Undead] add Living

### 自動判定した方がいい内容があったら追加






tag @s[nbt={Invisible:true}] add Invisible
tag @s[nbt={ActiveEffects:[{Id:14b}]}] add Invisible

tag @s[nbt={Glowing:true}] add Glowing
tag @s[nbt={ActiveEffects:[{Id:24b}]}] add Glowing

scoreboard players set @s TemporaryEffects 0

execute if entity @s[tag=HasSkill] store result score @s EnemySkillSpan run data get entity @s Attributes[1].Modifiers[0].Amount 1
execute if score @s EnemySkillSpan matches ..0 run scoreboard players operation @s EnemySkillSpan = $IntMax Const
