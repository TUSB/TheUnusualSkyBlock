#> skill:practice/job/check_acquirement
#スキル習得確認

#スキルの習得レベル取得
execute store result score _ Calc run data get storage skill: Skill.AcquireLevel.Min
#プレイヤーのジョブレベル取得
execute if data storage skill: Skill{Job:"共通"} run scoreboard players operation _ _ = @s Level
execute if data storage skill: Skill{Job:"剣士"} run scoreboard players operation _ _ = @s KnightLv
execute if data storage skill: Skill{Job:"忍者"} run scoreboard players operation _ _ = @s NinjaLv
execute if data storage skill: Skill{Job:"狩人"} run scoreboard players operation _ _ = @s HunterLv
execute if data storage skill: Skill{Job:"白魔導士"} run scoreboard players operation _ _ = @s WhiteMageLv
execute if data storage skill: Skill{Job:"黒魔導士"} run scoreboard players operation _ _ = @s BlackMageLv
execute if data storage skill: Skill{Job:"召喚士"} run scoreboard players operation _ _ = @s SummonerLv
execute if data storage skill: Skill{Job:"絡繰士"} run scoreboard players operation _ _ = @s PuppetMasterLv
execute if data storage skill: Skill{Job:"怪盗"} run scoreboard players operation _ _ = @s ThiefLv
#未習得時
execute unless score _ _ >= _ Calc run return run function makeup:skill/practice/error/not_acquired
#習得時
function skill:practice/job/check_mp
