##############################
### 敵スキルクールダウン処理
##############################

### MinCooldown読み込み
execute store result score $Min Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].MinTime 1
### MaxCooldown読み込み
execute store result score $Max Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].MaxTime 1
### Min-Max乱数計算
function calc_manager:update_random
scoreboard players operation $Max Global -= $Min Global
scoreboard players operation $Max Global *= $Random Global
scoreboard players operation $Max Global /= $MWCBase Const
scoreboard players operation $Max Global += $Min Global
### SkillTimerにセット
scoreboard players operation @s SkillTimer = $Max Global
