#Function
# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["傾向§2⇧§rは待ち安定～","傾向§0⇩§rは勝負の分かれ目\\nビビりはここで回収しちゃうのさ～","傾向§1⇨§rは神頼み～","傾向§2⇧⇧§rは激アツ展開！！！","傾向§0⇩⇩§rは地獄への片道切符～"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Repeat.palette set value {0:'{"text":"","color":"blue"}',1:'{"text":"","color":"yellow"}',2:'{"text":"","color":"red"}'}
data modify storage mob_data: CCHelper.Repeat.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperRepeat

# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["え？こんな崖の近くで危ないって？","ここからだったら神様に近くて、願いも叶いやすいでしょ。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Insight.palette set value {}
data modify storage mob_data: CCHelper.Insight.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["私はカブに全てを喰われた。Ⓟ20\\nみんな少ない稼ぎで頑張っていたんだけどね・・・Ⓟ8\\nちょっと手を出しすぎちゃった。Ⓟ20","カブはね、即決が大事。Ⓟ20\\n得を取るのも、損を抑えるのも。Ⓟ20\\n長い目で見れば大きく育つなんて嘘なんだよ。Ⓟ20","Ⓟ300なんでこうなったかって？Ⓟ20\\n集中のためにギルドハウスの周りを散歩するのが癖なんだけど、\\n落ちたと思ったら・Ⓟ3・Ⓟ3・Ⓟ5","そこには忌まわしき金の...Ⓟ4あⓅ3あⓅ3あⓅ3こⓅ0れⓅ0以Ⓟ0上Ⓟ0思Ⓟ0いⓅ0出Ⓟ0さⓅ0せⓅ0なⓅ0いⓅ0でⓅ0くⓅ0れⓅ0！Ⓟ0！Ⓟ0！"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {}
data modify storage mob_data: CCHelper.Interact.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInteract

data modify storage mob_data: CCHelper.Interact.pause set value {long:2}

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
