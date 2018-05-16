##############################
### １分処理
##############################

### １分カウントスコア初期化
scoreboard players set $Second Count 0

### イベント処理
scoreboard players remove $EventTimer Count 1
execute if score $EventTimer Count matches ..0 run function event_manager:cause_event
