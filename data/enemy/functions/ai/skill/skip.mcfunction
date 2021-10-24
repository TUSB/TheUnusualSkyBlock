#LoopCountを戻す
data modify storage mob_data: AI.Turn[0].Skill[0].Loop.Current set from storage mob_data: AI.Turn[0].Skill[0].Loop.Max
#Once=0でなければ次のリストへ
execute if data storage mob_data: AI.Turn[0].Skill[0].Once store result storage mob_data: AI.Turn[0].Skill[0].Once.Current int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].Once.Current
execute unless data storage mob_data: AI.Turn[0].Skill[0].Once{Current:0} run data modify storage mob_data: AI.Turn[0].Skill append from storage mob_data: AI.Turn[0].Skill[0]
data remove storage mob_data: AI.Turn[0].Skill[0]
#Skillがなくなればリストを削除
execute unless data storage mob_data: AI.Turn[0].Skill[0] run data remove storage mob_data: AI.Turn[0].Skill
#TurnLoop削減 0のときexit処理
execute if data storage mob_data: AI.Turn[0].Exit.Loop.Current store result storage mob_data: AI.Turn[0].Exit.Loop.Current int 0.99999 run data get storage mob_data: AI.Turn[0].Exit.Loop.Current 1
