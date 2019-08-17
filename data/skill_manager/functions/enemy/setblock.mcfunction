##############################
### ブロック設置
##############################

### ブロック名読み込み
data modify entity @s Tags append from block 0 0 0 RecordItem.tag.CurrentSkill[0].Block

function enemy_manager:block_placer/common
