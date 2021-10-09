
### TIPS 内容集
# 32個まで追加可能

#> 追加方法
#
# 下の文をコピーします。
# '[{"with":[{"translate":"< ここにTIPSの内容を記述する！！！ >"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set x"}}]'
#
# コメント化されているコマンドのコメントを解除し、上の文を最後にペーストします。
# < ここにTIPSの内容を記述する！！！ >というところにTIPSの文を書き込みます。
# 文の最後にある "/trigger TipsSupTrigger set x" の x を順番通りの数字にしてください。
#
# 必ず順番通りに追加、数字を振ってください。システムが壊れます。
#
# 記述してくれたものをlangファイルに追加してくれると助かります！
#
# 改行を表す \n はこの場所だとエラーになるので \\n にしてください。
#

data remove storage tusb_player: TIPS

## 1-10
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"ベッドで寝るとHPやMPが全回復します。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 1"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"交易島の村人は、島から離れすぎると、島に戻ってしまいます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 2"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"岩盤やバリアには気を付けて！ 埋まると死んでしまいます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 3"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"空腹状態で戦うのは危険です！ MPが回復しません！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 4"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"バーストは100000以上貯まっていますか？\\n３秒間スニークした後、画面に表示される数字を入力すると、%1$sバーストゲージを消費して、特殊なオーラを纏うことができます。","with":[{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}]}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 5"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"バーストブレイクすると、スキルの再設定時間がリセットされます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 6"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"10秒間スニークすると、プレイヤー情報の表示や設定ができます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 7"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"レベル50になりましたか？ レベル50でレベルアップすると、\\n%1$s(CP)が貯められます。このポイントを使うと、\\n色んなステータスを伸ばすことができます。\\n%2$sは最大で50まで貯められます。","with":[{"translate":"キャパシティポイント","color":"green"}]}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 8"}}]'
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 

## 11-20
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 

## 21-30
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 

## 31-32
# data modify storage tusb_player: TIPS append value 
# data modify storage tusb_player: TIPS append value 

