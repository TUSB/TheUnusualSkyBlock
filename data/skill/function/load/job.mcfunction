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
execute store result storage skill: _.Level int 1 run scoreboard players operation _ _ %= _ Calc

function skill:load/job.macro with storage skill: _
data remove storage skill: _
