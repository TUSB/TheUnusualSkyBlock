
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
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"バイトから買えるバンドルを使うと多くの報酬を持ち帰ることができます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 1"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"湧きつぶしは適度に、商人が来てくれることもあります。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 2"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"岩盤やバリアには気を付けて！ 埋まると死んでしまいます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 3"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"空腹状態で戦うのは危険です！ MPが回復しません！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 4"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"ぬこかわいいよぬこ"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 5"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"剣士のスキル、鍛治は鉄装備であれば100%の確立で直せる。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 6"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"3回素早くスニークすると、プレイヤー情報の表示や設定ができます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 7"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"エンチャント台を右クリックすると魔石を使用した刻印台になり、\\n中に空いている上下のインベントリーにアイテムと魔石を順に入れ\\n中央のエンチャント台を取ることで刻印を付与することが出来る。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 8"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"金床に触れることで魔石合成台になり、\\n左右の開いているインベントリーを特定の種類の魔石を全て置き、\\n中央の金床に触れることで魔石をより上位の魔石にすることが出来る。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 9"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"< ここにTIPSの内容を記述する！！！ >"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 10"}}]'

## 11-20
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"武器となるアイテムをインベントリカーソルを合わせた瞬間、この世界にあった攻撃力に変換される。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 11"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"TUSBMメモリーをインベントリに入れるとTUSBメモリーの情報が開示される。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 12"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"インベントリーに入れていない未確定のTUSBMメモリーや武器は未消費物としての価値があるので交易材料になる場合がある。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 13"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"魔石は商業ゴブリン・メタルティンカと売買できる。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 14"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"色ガラス、トラップアイテム等は商業ゴブリン・ジャンクスフィカと売買できる。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 15"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"全ての食材、農産食物等は商業ゴブリン・ミクスクッカと売買できる。"}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 16"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"釣りで一息つくのはどうですか？普段とは違うものが釣れることがあります。 "}],"translate":"[TIPS] %$1s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 17"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"レベル50になりましたか？ レベル50でレベルアップすると、\\n%1$s(CP)が貯められます。このポイントを使うと、\\n色んなステータスを伸ばすことができます。\\n%2$sは最大で50まで貯められます。","with":[{"translate":"キャパシティポイント","color":"green"}]}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 18"}}]'
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
