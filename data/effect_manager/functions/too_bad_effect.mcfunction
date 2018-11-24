##############################
### 特殊効果処理
##############################

execute unless score @s ResistLock matches 1 unless score $Random Global < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score $Random Global < @s ResistEffects run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"とても悪い効果","color":"white"},"を防いだ！"]
execute if score $Random Global < @s ResistEffects run advancement revoke @s only effect_manager:invisible

execute if entity @s[advancements={effect_manager:invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect_manager:doom/apply
execute if entity @s[advancements={effect_manager:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run function effect_manager:doom/apply
execute if entity @s[advancements={effect_manager:invisible={super_doom=true}}] run scoreboard players operation @s DoomCount < $10 Const
execute if entity @s[advancements={effect_manager:invisible={burn=true}},tag=!Burn] unless entity @s[tag=Burn] run function effect_manager:burn/apply
execute if entity @s[advancements={effect_manager:invisible={debility=true}}] run function effect_manager:debility/apply
execute if entity @s[advancements={effect_manager:invisible={virus=true}}] unless score @s VirusCount matches 0.. run function effect_manager:virus/apply
execute if entity @s[advancements={effect_manager:invisible={confuse=true}}] unless score @s ConfuseCount matches 0.. run function effect_manager:confuse/apply
execute if entity @s[advancements={effect_manager:invisible={curse=true}}] unless entity @s[tag=Curse] run function effect_manager:curse/apply
execute if entity @s[advancements={effect_manager:invisible={terror=true}}] unless score @s TerrorLevel matches 0.. run function effect_manager:terror/apply
execute if entity @s[advancements={effect_manager:invisible={tnt=true}}] unless score @s TntCount matches 0.. run function effect_manager:tnt/apply
