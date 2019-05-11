##############################
### 繰り返し動作コンティニュー
##############################

### カーソル移動
function data_manager:move_cursor/data_id

### 繰り返しカウントを減らす
scoreboard players remove @s RepeaterCount 1
### 0以下かつBreak設定ならタグを書き込む
execute if score @s RepeaterCount matches ..0 run function behaviour_manager:behaviour_applier/action/repeater/break
### Brokenでなければ次を読みこみ
execute unless entity @s[tag=Repeater.Broken] run function behaviour_manager:definition_reader/moves/check
