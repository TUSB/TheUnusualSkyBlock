
### 特殊効果処理

## Lv 1~11 特殊デバフ
execute store result score _ ResistEffects run function calc:random
scoreboard players set _ _ 100
scoreboard players operation _ ResistEffects %= _ _
execute if entity @s[predicate=effects:too_bad_effect] run function effects:too_bad_effect
scoreboard players set @s ResistLock 1



## Lv 71~79 特殊デバフ解除
execute if entity @s[advancements={effects:invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effects:doom/escape
execute if entity @s[advancements={effects:invisible={anti_doom=true}}] if entity @s[tag=Curse] run function effects:curse/cure
execute if entity @s[advancements={effects:invisible={anti_burn=true}}] if score @s BurnCount matches 0.. run function effects:burn/cure
execute if entity @s[advancements={effects:invisible={anti_freeze=true}}] if entity @s[tag=Freeze] run function effects:freeze/cure
execute if entity @s[advancements={effects:invisible={anti_palsy=true}}] if score @s PalsyLevel matches 0.. run function effects:palsy/cure
execute if entity @s[advancements={effects:invisible={anti_confuse=true}}] if score @s ConfuseCount matches 0.. run function effects:confuse/cure
execute if entity @s[advancements={effects:invisible={anti_curse=true}}] if entity @s[tag=Curse] run function effects:curse/cure
execute if entity @s[advancements={effects:invisible={anti_virus=true}}] if score @s VirusCount matches 0.. run function effects:virus/cure
execute if entity @s[advancements={effects:invisible={anti_tnt=true}}] if score @s TntCount matches 0.. run function effects:tnt/cure
execute if entity @s[advancements={effects:invisible={anti_pale=true}}] if score @s PaleLevel matches 0.. run function effects:pale/cure



## Lv 100 温泉入浴
execute if entity @s[advancements={effects:invisible={hot_spring=true}}] run function effects:hot_spring/apply

effect clear @s minecraft:invisibility
advancement revoke @s only effects:invisible
