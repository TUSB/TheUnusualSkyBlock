
### TIPS 内容集
# 32個まで追加可能

#> 追加方法
#
# 下の文をコピーします。
# '[{"with":[{"translate":"< ここにTIPSの内容を記述する！！！ >"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set x"}}]'
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
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"湧きつぶしはほどほどにしましょう。商人が来てくれなくなるかもしれません。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 2"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"岩盤やバリアには気を付けて！ 埋まると死んでしまいます！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 3"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"空腹状態で戦うのは危険です！ MPが回復しません！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 4"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"双壊~ダブルブレイク~をご存じですか？この効果が付与されたツールでスポナーを壊すと、１度に２倍壊したことになります。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 5"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"剣士のスキル、鍛治は鉄装備であれば100%の確率で直せます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 6"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"ドクロのトラップアイテム等はシュルカーボックスか、バンドルに入れておけば安全に保管出来、また敵にも大ダメージを与えるものも中にはあります。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 7"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"エンチャント台で魔石を使って装備をエンチャントできます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 8"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"金床（宝石細工台）で特定の魔石同士を組み合わせて強化できます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 9"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"ご存じですか？クールタイムはプレイヤーではなくアイテムに設定されます。アイテムを切り替え使用する事で素早くスキルを使用できます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 10"}}]'

## 11-20
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"武器となるアイテムは手に持った瞬間、この世界にあった攻撃力に変換されます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 11"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"TUSBメモリーをインベントリに入れるとTUSBメモリーの情報が開示されます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 12"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"ドクロの見た目のトラップアイテムには気を付けましょう！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 13"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"幸運が付与されたツールを畑に使用すると魔石を入手できる場合があります。また活きがいい野菜を掘り出せることも・・・？"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 14"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"色ガラス、トラップアイテム等は商業ゴブリン・ジャンクスフィカに売却できます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 15"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"全ての食材、農産食物等は商業ゴブリン・ミクスクッカに売却できます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 16"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"釣りで一息つくのはどうですか？普段とは違うものが釣れることも？"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 17"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"スキル設定のチャットは、何回でも押すことができます。スニークする必要がないので、戦闘中にスキルを変えるなんてことも可能です。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 18"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"この世界のスポナーは指定回数破壊しないと消滅しません。また破壊回数が多いスポナーはその分経験値も多いです。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 19"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"この世界には、空腹や鈍足といった弱体化エフェクトのほかにも、独自のデバフが存在します。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 20"}}]'

## 21-30
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"拠点周辺の警戒を怠らないでください！この世界におけるウィザーは経験値1の雑魚敵です！ それ以上の敵が自然湧きに紛れています！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 21"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"マルチで経験値を取り損ねても大丈夫！次回取得時にボーナスが入ります！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 22"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"奈落や呪詛で死亡した場合、虚無のバンドルを使用して上限はありますが失ったアイテムを取り戻せる可能性があります。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 23"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"コーンスープは大事。重要！"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 24"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"この世界には魔法属性エンチャントが存在します。「魔石」はバニラでいうエンチャントブックです。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 25"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"複数のスキルを使用してみてはいかがでしょうか？"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 26"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"攻撃以外にも使えるスキルがあるかもしれません。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 27"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"%1$sこのマークに気を付けて！稀に恐ろしくLvが高いエリート個体が自然湧きする場合があります！","color":"white","italic":false,"with":[{"text":"E","font":"icon"}]}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 28"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"土台に宝石ブロックではなくTNTを設置することでビーコンを起動させることができます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 29"}}]'
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"バンドルにネザースターを入れることで経験値化を防いで運ぶことができます。"}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 30"}}]'

## 31
data modify storage tusb_player: TIPS append value '[{"with":[{"translate":"レベル50になりましたか？ レベル50でレベルアップすると、\\n%1$s(CP)が貯められます。このポイントを使うと、\\n色んなステータスを伸ばすことができます。\\n%1$sは最大で50まで貯められます。","with":[{"translate":"キャパシティポイント","color":"green"}]}],"translate":"[TIPS] %1$s","bold":true},{"translate":"➡このTIPSを表示しない","clickEvent":{"action":"run_command","value":"/trigger TipsSupTrigger set 31"}}]'
