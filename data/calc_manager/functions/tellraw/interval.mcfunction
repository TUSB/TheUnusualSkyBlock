##############################
### インターバル表示
##############################

### 時間計算
scoreboard players operation $Second Global = @s SkillInterval
scoreboard players operation $Second Global /= $1000 Const
scoreboard players operation $MilliSecond Global = @s SkillInterval
scoreboard players operation $MilliSecond Global %= $1000 Const

### アクションバー表示
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global matches ..99 run data merge entity 0-0-0-0-0 {CustomName:"[{\"text\":\"スキル制限中：\",\"color\":\"red\",\"bold\":true},[{\"score\":{\"name\":\"$Second\",\"objective\":\"Global\"},\"color\":\"gold\"},\".0\",{\"score\":{\"name\":\"$MilliSecond\",\"objective\":\"Global\"}}],\"秒\"]"}
execute if score @s SkillInterval > $0 Const if score $MilliSecond Global matches 100.. run data merge entity 0-0-0-0-0 {CustomName:"[{\"text\":\"スキル制限中：\",\"color\":\"red\",\"bold\":true},[{\"score\":{\"name\":\"$Second\",\"objective\":\"Global\"},\"color\":\"gold\"},\".\",{\"score\":{\"name\":\"$MilliSecond\",\"objective\":\"Global\"}}],\"秒\"]"}
scoreboard players set $TextLength Global 11
execute if score @s SkillInterval > $0 Const run function main:show_text/actionbar/show
