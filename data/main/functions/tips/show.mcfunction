##############################
### TIPS表示（最大３２個）
##############################

### 乱数更新
function calc_manager:update_random
### 6番目までTIPSがあるから6で剰余
scoreboard players operation $Random Global %= $7 Const

### 番目にすると1少ないので1足す
scoreboard players operation $Number Global = $Random Global
scoreboard players add $Number Global 1
### BitFlagsを反転させて入れないといけない 6桁 111111 = 63
scoreboard players set $BitFlags Global 127
scoreboard players operation $BitFlags Global -= @s TipsSuppressFlag
### Number番目のBitFlag取得
function calc_manager:bit/digit_at_x_number

### トリガー有効化
scoreboard players enable @s TipsSupTrigger
### TIPS表示
execute if score $Digit Global matches 1 run tellraw @s ["",{"text":"[TIPS] ベッドで寝るとHPやMPが全回復します。","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 1"}}]
execute if score $Digit Global matches 2 run tellraw @s ["",{"text":"[TIPS] 交易島の村人は、島から離れすぎると、島に戻ってしまいます。","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 2"}}]
execute if score $Digit Global matches 3 run tellraw @s ["",{"text":"[TIPS] 岩盤やバリアには気を付けて！ 埋まると死んでしまいます。","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 3"}}]
execute if score $Digit Global matches 4 run tellraw @s ["",{"text":"[TIPS] 空腹状態で戦うのは危険です！ MPが回復しません！","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 4"}}]
execute if score $Digit Global matches 5 run tellraw @s ["",{"translate":"[TIPS] バーストは100000以上貯まっていますか？\n３秒間スニークした後、画面に表示される数字を入力すると、%1$sバーストゲージを消費して、特殊なオーラを纏うことができます。","with":[{"text":"バーストブレイク！！","color":"gold","italic":true,"bold":true}],"bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 5"}}]
execute if score $Digit Global matches 6 run tellraw @s ["",{"text":"[TIPS] バーストブレイクすると、スキルの再設定時間がリセットされます。","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 6"}}]
execute if score $Digit Global matches 7 run tellraw @s ["",{"text":"[TIPS] 10秒間スニークすると、プレイヤー情報の表示や設定ができます。","bold":true},{"text":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 7"}}]
