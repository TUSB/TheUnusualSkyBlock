##############################
### 敵スキルChance乱数計算
##############################

### Random = 0-65536
function calc_manager:update_random
### Chance読み込み 0-100 * 656.36 = 0-65636
execute store result score $Chance Global run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Chance 655.36
### Chance>=乱数で実行
execute if score $Chance Global >= $Random Global run function skill_manager:enemy/skill/act
