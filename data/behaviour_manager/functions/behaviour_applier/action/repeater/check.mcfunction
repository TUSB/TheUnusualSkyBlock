##############################
### 時間をチェック
##############################

### 行動時間超えている時処理(初回も含む)
execute unless score @s RepeaterToNext >= @s GlobalCSTimer run function behaviour_manager:behaviour_applier/action/repeater/continue

### バニラAIで行動時間中だったらカスタムAIに切り替え
execute if score @s RepeaterToStart <= @s GlobalCSTimer if score @s GlobalCSTimer <= @s RepeaterToNext unless entity @s[tag=CustomAI] run function behaviour_manager:custom_ai/on
### カスタムAIで行動時間外ならバニラAIに切り替え
execute unless score @s RepeaterToStart <= @s GlobalCSTimer if entity @s[tag=CustomAI] run function behaviour_manager:custom_ai/off
execute unless score @s GlobalCSTimer <= @s RepeaterToNext if entity @s[tag=CustomAI] run function behaviour_manager:custom_ai/off
