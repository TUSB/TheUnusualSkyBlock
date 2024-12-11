
### 特殊デバフ処理

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run scoreboard players set @s ResistLock 1

execute unless score @s ResistLock matches 1 unless score _ ResistEffects < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score _ ResistEffects < @s ResistEffects run function makeup:effects/too_bad_effect
execute if score _ ResistEffects < @s ResistEffects run advancement revoke @s only effects:invisible

execute if entity @s[advancements={effects:invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effects:doom/condition
execute if entity @s[advancements={effects:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run function effects:doom/apply
execute if entity @s[advancements={effects:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run scoreboard players set _ _ 10
execute if entity @s[advancements={effects:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run scoreboard players operation @s DoomCount < _ _
execute if entity @s[advancements={effects:invisible={burn=true}},predicate=!effects:fire_resistance] unless block ~ ~ ~ water run function effect:burn/condition
execute if entity @s[advancements={effects:invisible={freeze=true}}] unless entity @s[tag=Freeze] run function effects:freeze/condition
execute if entity @s[advancements={effects:invisible={palsy=true}}] unless score @s PalsyLevel matches 0.. run function effects:palsy/condition
execute if entity @s[advancements={effects:invisible={confuse=true}}] unless score @s ConfuseCount matches 0.. run function effects:confuse/condition
execute if entity @s[advancements={effects:invisible={curse=true}}] unless entity @s[tag=Curse] run function effects:curse/condition
execute if entity @s[advancements={effects:invisible={virus=true}}] unless score @s VirusCount matches 0.. run function effects:virus/condition
execute if entity @s[advancements={effects:invisible={tnt=true}}] unless score @s TntCount matches 0.. run function effects:tnt/apply
execute if entity @s[advancements={effects:invisible={pale=true}}] unless score @s PaleLevel matches ..-1 unless score @s PaleLevel matches 9.. run function effects:pale/apply
execute if entity @s[advancements={effects:invisible={debility=true}}] run function effects:debility/condition

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level4
