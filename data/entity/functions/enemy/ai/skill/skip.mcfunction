#LoopCountを戻す
data modify storage mob_data: AI.Turn[0].Skill[0].LoopCount set from storage mob_data: AI.Turn[0].Skill[0].Loop
#Once=0でなければ次のリストへ
execute if data storage mob_data: AI.Turn[0].Skill[0].Once store result storage mob_data: SkillCheck.Once int 0.99999 store result storage mob_data: AI.Turn[0].Skill[0].Once int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].Once
execute if data storage mob_data: AI.Turn[0].Skill[0].Once unless data storage mob_data: SkillCheck{Once:0} run data modify storage mob_data: AI.Turn[0].Skill append from storage mob_data: AI.Turn[0].Skill[0]
execute unless data storage mob_data: AI.Turn[0].Skill[0].Once run data modify storage mob_data: AI.Turn[0].Skill append from storage mob_data: AI.Turn[0].Skill[0]
data remove storage mob_data: AI.Turn[0].Skill[0]
#Skillがなくなればリストを削除
execute unless data storage mob_data: AI.Turn[0].Skill[0] run data remove storage mob_data: AI.Turn[0].Skill
