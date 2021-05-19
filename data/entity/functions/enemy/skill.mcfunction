###unknown interval処理
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval set value 1
###unknown interval処理
##loopcountを合わせる為0.99999
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].LoopCount store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].LoopCount int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Loop 1

####interval 減算
execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval

###interval=0 呼び出し
##ifするためにstorageを移動
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.SkillCheck set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0]
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.SkillCheck{Interval:0} run tag @s add Skill_call
##ifに成功したら実行
execute as @s[tag=Skill_call] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Call set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0]
execute as @s[tag=Skill_call] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Call set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Call.Call
execute as @s[tag=Skill_call] run function entity:enemy/call
##Interval のリセット LoopCountの減算
execute as @s[tag=Skill_call] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].highInterval
execute as @s[tag=Skill_call] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].LoopCount int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].LoopCount

###LoopCount=0 次に飛ばす
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.SkillCheck{LoopCount:0} run tag @s add Skill_skip
##次のskillを引っ張り出す
execute as @s[tag=Skill_call,tag=Skill_skip] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill append from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0]
execute as @s[tag=Skill_call,tag=Skill_skip] run data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0]
#LoopCount Intervalを設定
execute as @s[tag=Skill_call,tag=Skill_skip] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Interval int 1 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].highInterval
execute as @s[tag=Skill_call,tag=Skill_skip] store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].LoopCount int 0.99999 run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].AI.Skills.Skill[0].Loop

#Tag外し
execute as @s[tag=Skill_call] run tag @s remove Skill_call
execute as @s[tag=Skill_skip] run tag @s remove Skill_skip