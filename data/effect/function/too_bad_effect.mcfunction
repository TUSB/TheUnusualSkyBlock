#> effect:too_bad_effect
### 特殊デバフ処理

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run scoreboard players set @s ResistLock 1

execute unless score @s ResistLock matches 1 unless score _ ResistEffects < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score _ ResistEffects < @s ResistEffects run function makeup:effect/too_bad_effect
execute if score _ ResistEffects < @s ResistEffects run advancement revoke @s only effect:invisible

execute if entity @s[advancements={effect:invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect:doom/condition
execute if entity @s[advancements={effect:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run function effect:doom/apply
execute if entity @s[advancements={effect:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run scoreboard players set _ _ 10
execute if entity @s[advancements={effect:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run scoreboard players operation @s DoomCount < _ _
execute if entity @s[advancements={effect:invisible={burn=true}},predicate=!effect:fire_resistance] unless block ~ ~ ~ water run function effect:burn/condition
execute if entity @s[advancements={effect:invisible={freeze=true}}] unless entity @s[tag=Freeze] run function effect:freeze/condition
execute if entity @s[advancements={effect:invisible={palsy=true}}] unless score @s PalsyLevel matches 0.. run function effect:palsy/condition
execute if entity @s[advancements={effect:invisible={confuse=true}}] unless score @s ConfuseCount matches 0.. run function effect:confuse/condition
execute if entity @s[advancements={effect:invisible={curse=true}}] unless entity @s[tag=Curse] run function effect:curse/condition
execute if entity @s[advancements={effect:invisible={virus=true}}] unless score @s VirusCount matches 0.. run function effect:virus/condition
execute if entity @s[advancements={effect:invisible={tnt=true}}] unless score @s TntCount matches 0.. run function effect:tnt/apply
execute if entity @s[advancements={effect:invisible={pale=true}}] unless score @s PaleLevel matches ..-1 unless score @s PaleLevel matches 9.. run function effect:pale/apply
execute if entity @s[advancements={effect:invisible={debility=true}}] run function effect:debility/condition

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level4
