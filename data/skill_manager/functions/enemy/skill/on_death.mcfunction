##############################
### 敵死亡時スキル
##############################

### カーソル移動
function data_manager:cursor/data_id/move
### jukeboxにコピー
execute at 1-0-0-0-0 run data modify block 0 0 0 RecordItem.tag.CurrentSkill set from entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.SkillOnDeath
### 共通処理
function skill_manager:enemy/skill/main
### DataHolderに保存
execute at 1-0-0-0-0 run data modify entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.SkillOnDeath set from block 0 0 0 RecordItem.tag.CurrentSkill
