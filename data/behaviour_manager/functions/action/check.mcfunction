##############################
### AI状態とターゲット存在を確認
##############################

### AIタイプ判定
function behaviour_manager:action/repeater/check

### カスタムAIなら動かす
execute if entity @s[tag=CustomAI] run function behaviour_manager:action/move/check
