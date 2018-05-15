##############################
### １分処理
##############################

### １分カウントスコア初期化
scoreboard players set $Second Global 0

### イベント処理
scoreboard players remove $EventTimer Global 1
execute if score $EventTimer Global matches ..0 run function event_manager:cause_event



