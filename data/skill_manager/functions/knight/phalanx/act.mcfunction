##############################
### ファランクス発動
##############################

scoreboard players operation $ActiveSkill Global = @s SupportSkill

execute unless score @s SneakTime matches 1.. as @s run function skill_manager:knight/phalanx/apply
execute if score @s SneakTime matches 1.. as @a[distance=..15] run function skill_manager:knight/phalanx/apply

scoreboard players set @s SkillInterval 60
