##############################
### 敵通常スキル
##############################

### jukeboxにコピー
execute at 1-0-0-0-0 run data modify block 0 0 0 RecordItem.tag.CurrentSkill set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill
### 共通処理
function skill_manager:enemy/skill/main
### クールダウン処理
function skill_manager:enemy/skill/cooldown
### OnceでSkillが空になった時タグ削除
execute unless data block 0 0 0 {RecordItem:{tag:{CurrentSkill:[{}]}}} run tag @s remove HasNormalSkill
### DataHolderに保存
execute at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill set from block 0 0 0 RecordItem.tag.CurrentSkill
