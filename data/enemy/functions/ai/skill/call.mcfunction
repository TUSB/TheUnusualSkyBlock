#Call
data modify storage mob_data: CallList set from storage mob_data: AI.Turn[0].Skill[0].Call
execute store result score # MP run data get storage mob_data: AI.Turn[0].Skill[0].MP
execute unless score # MP > @s MP run function enemy:ai/call/execute/
execute unless score # MP > @s MP run scoreboard players operation @s MP -= # MP
#Interval適用
execute store result storage mob_data: AI.Turn[0].Skill[0].Interval.Current int 1 run function enemy:ai/skill/set_interval
#Loop削減 0のときNext処理
execute store result storage mob_data: AI.Turn[0].Skill[0].Loop.Current int 0.99999 run data get storage mob_data: AI.Turn[0].Skill[0].Loop.Current
execute if data storage mob_data: AI.Turn[0].Skill[0].Loop{Current:0} run function enemy:ai/skill/skip
