##############################
### スキル読み込み
##############################

### MinCooldown読み込み
execute store result score $Min Global at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill[0].MinTime 1
### MaxCooldown読み込み
execute store result score $Max Global at 1-0-0-0-0 run data get entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill[0].MaxTime 1
### Min-Max乱数計算
function calc_manager:update_random
scoreboard players operation $Max Global -= $Min Global
scoreboard players operation $Random Global *= $Max Global
scoreboard players operation $Random Global /= $MWCBase Const
scoreboard players operation $Random Global += $Min Global
### SkillTimerにセット
scoreboard players operation @s SkillTimer = $Random Global
tag @s add NormalSkill
