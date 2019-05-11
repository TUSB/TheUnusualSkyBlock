##############################
### エンティティ属性判定
##############################

### Undead
execute unless entity @s[type=!minecraft:drowned,type=!minecraft:husk,type=!minecraft:phantom,type=!minecraft:skeleton,type=!minecraft:skeleton_horse,type=!minecraft:stray,type=!minecraft:wither,type=!minecraft:wither_skeleton,type=!minecraft:zombie,type=!minecraft:zombie_horse,type=!minecraft:zombie_pigman,type=!minecraft:zombie_villager] run tag @s add Undead

### Living
tag @s[tag=!Undead] add Living

### 標準透明化
tag @s[nbt={Invisible:true}] add NativeInvisible
tag @s[nbt={ActiveEffects:[{Id:14b}]}] add NativeInvisible

### 標準発光
tag @s[nbt={Glowing:true}] add NativeGlowing
tag @s[nbt={ActiveEffects:[{Id:24b}]}] add NativeGlowing

### 平時移動速度
execute store result score @s MovementSpeed run data get entity @s Attributes[{Name:"generic.movementSpeed"}].Base 10000

### 自動判定した方がいい内容があったら追加
