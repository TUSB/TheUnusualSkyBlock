##############################
### スキル定義持ちかどうか判定
##############################

### nbtチェック
execute at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill run function status_manager:definition_reader/skill/read
