#> effect:too_bad_effect
### 特殊デバフ処理

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run scoreboard players set @s ResistLock 1

execute unless score @s ResistLock matches 1 unless score _ ResistEffects < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score _ ResistEffects < @s ResistEffects run function makeup:effect/too_bad_effect
execute if score _ ResistEffects < @s ResistEffects run advancement revoke @s only effect:invisible

execute if entity @s[advancements={effect:invisible={doom=true}}] run function effect:doom/apply
execute if entity @s[advancements={effect:invisible={super_doom=true}}] run function effect:doom/apply_super
execute if entity @s[advancements={effect:invisible={burn=true}}] run function effect:burn/apply
execute if entity @s[advancements={effect:invisible={freeze=true}}] run function effect:freeze/apply0
execute if entity @s[advancements={effect:invisible={palsy=true}}] run function effect:palsy/apply
execute if entity @s[advancements={effect:invisible={confuse=true}}] run function effect:confuse/apply
execute if entity @s[advancements={effect:invisible={curse=true}}] run function effect:curse/apply
execute if entity @s[advancements={effect:invisible={virus=true}}] run function effect:virus/apply
execute if entity @s[advancements={effect:invisible={tnt=true}}] run function effect:tnt/apply
execute if entity @s[advancements={effect:invisible={pale=true}}] run function effect:pale/apply
execute if entity @s[advancements={effect:invisible={debility=true}}] run function effect:debility/apply

execute if entity @a[distance=..32,scores={Burst=0..,Job=4}] run function skill:act/white_mage/clear/cure/level4
