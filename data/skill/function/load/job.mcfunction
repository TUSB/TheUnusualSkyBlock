#> skill:load/job
#スコアからスキルをロード
#SkillID = 職業ID * 100 + 習得Lv
#職業を選択
execute if score _ _ matches 100..199 run data modify storage skill: Data.Job set from storage skill: Data.Knight
execute if score _ _ matches 200..299 run data modify storage skill: Data.Job set from storage skill: Data.Ninja
execute if score _ _ matches 300..399 run data modify storage skill: Data.Job set from storage skill: Data.Hunter
execute if score _ _ matches 400..499 run data modify storage skill: Data.Job set from storage skill: Data.WhiteMage
execute if score _ _ matches 500..599 run data modify storage skill: Data.Job set from storage skill: Data.BlackMage
execute if score _ _ matches 600..699 run data modify storage skill: Data.Job set from storage skill: Data.Summoner
execute if score _ _ matches 700..799 run data modify storage skill: Data.Job set from storage skill: Data.PuppetMaster
execute if score _ _ matches 800..899 run data modify storage skill: Data.Job set from storage skill: Data.Thief
execute if score _ _ matches 900..999 run data modify storage skill: Data.Job set from storage skill: Data.Common
#スキルを選択
scoreboard players set _ Calc 100
scoreboard players operation _ _ %= _ Calc

execute if score _ _ matches 0 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:0}}]
execute if score _ _ matches 1 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:1}}]
execute if score _ _ matches 3 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:3}}]
execute if score _ _ matches 5 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:5}}]
execute if score _ _ matches 8 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:8}}]
execute if score _ _ matches 10 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:10}}]
execute if score _ _ matches 13 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:13}}]
execute if score _ _ matches 15 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:15}}]
execute if score _ _ matches 17 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:17}}]
execute if score _ _ matches 18 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:18}}]
execute if score _ _ matches 20 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:20}}]
execute if score _ _ matches 23 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:23}}]
execute if score _ _ matches 25 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:25}}]
execute if score _ _ matches 26 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:26}}]
execute if score _ _ matches 28 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:28}}]
execute if score _ _ matches 30 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:30}}]
execute if score _ _ matches 33 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:33}}]
execute if score _ _ matches 35 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:35}}]
execute if score _ _ matches 37 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:37}}]
execute if score _ _ matches 38 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:38}}]
execute if score _ _ matches 39 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:39}}]
execute if score _ _ matches 40 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:40}}]
execute if score _ _ matches 43 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:43}}]
execute if score _ _ matches 45 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:45}}]
execute if score _ _ matches 46 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:46}}]
execute if score _ _ matches 48 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:48}}]
execute if score _ _ matches 49 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:49}}]
execute if score _ _ matches 50 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:50}}]
