#共通スキルとそれ以外で分岐
execute if data storage skill: Skill{Job:"共通"} run function skill:load/common
execute unless data storage skill: Skill{Job:"共通"} run function skill:load/job
