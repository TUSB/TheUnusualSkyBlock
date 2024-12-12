#> effect:invisible/
### 特殊効果処理

## Lv 1~11 特殊デバフ
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[predicate=effect:too_bad_effect,scores={Age=1..},predicate=entity:player] run function effect:too_bad_effect
scoreboard players set @s ResistLock 1

## Lv 20~22 難易度選択
execute if entity @s[advancements={effect:invisible={expert=true}}] run function main:difficulty/select/expert
execute if entity @s[advancements={effect:invisible={casual=true}}] run function main:difficulty/select/casual
execute if entity @s[advancements={effect:invisible={picnic=true}}] run function main:difficulty/select/picnic

## Lv 71~79 特殊デバフ解除
execute if entity @s[advancements={effect:invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effect:doom/escape
execute if entity @s[advancements={effect:invisible={anti_doom=true}}] if entity @s[tag=Curse] run function effect:curse/cure
execute if entity @s[advancements={effect:invisible={anti_burn=true}}] if score @s BurnCount matches 0.. run function effect:burn/cure
execute if entity @s[advancements={effect:invisible={anti_freeze=true}}] if entity @s[tag=Freeze] run function effect:freeze/cure
execute if entity @s[advancements={effect:invisible={anti_palsy=true}}] if score @s PalsyLevel matches 0.. run function effect:palsy/cure
execute if entity @s[advancements={effect:invisible={anti_confuse=true}}] if score @s ConfuseCount matches 0.. run function effect:confuse/cure
execute if entity @s[advancements={effect:invisible={anti_curse=true}}] if entity @s[tag=Curse] run function effect:curse/cure
execute if entity @s[advancements={effect:invisible={anti_virus=true}}] if score @s VirusCount matches 0.. run function effect:virus/cure
execute if entity @s[advancements={effect:invisible={anti_tnt=true}}] if score @s TntCount matches 0.. run function effect:tnt/cure
execute if entity @s[advancements={effect:invisible={anti_pale=true}}] if score @s PaleLevel matches 0.. run function effect:pale/cure



## Lv 100 温泉入浴
execute if entity @s[advancements={effect:invisible={hot_spring=true}}] run function effect:hot_spring/apply

effect clear @s minecraft:invisibility
#透明化付与
function effect:invisible/wearable_invisible
advancement revoke @s only effect:invisible
