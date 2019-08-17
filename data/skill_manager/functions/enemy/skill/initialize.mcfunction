##############################
### 敵スキル初期化
##############################

### Chance設定
execute unless data block 0 0 0 RecordItem.tag.CurrentSkill[0].Chance store result block 0 0 0 RecordItem.tag.CurrentSkill[0].Chance int 1 run scoreboard players get $100 Const

### Loop設定
execute store result block 0 0 0 RecordItem.tag.CurrentSkill[0].MaxLoop int 1 run data get block 0 0 0 RecordItem.tag.CurrentSkill[0].Loop 1

### Initializedタグ付与
execute store result block 0 0 0 RecordItem.tag.CurrentSkill[0].Initialized byte 1 run scoreboard players get $1 Const
