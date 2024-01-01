#Function
# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["傾向§2⇧§rは待ち安定～","傾向§0⇩§rは勝負の分かれ目\\nビビりはここで回収しちゃうのさ～","傾向§1⇨§rは神頼み～","傾向§2⇧⇧§rは激アツ展開！！！","傾向§0⇩⇩§rは地獄への片道切符～"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Repeat.palette set value {0:'{"text":"","color":"blue"}',1:'{"text":"","color":"yellow"}',2:'{"text":"","color":"red"}'}
data modify storage mob_data: CCHelper.Repeat.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperRepeat

# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["え？こんな崖の近くで危ないって？","いいんですよ、そろそろかなⓅ14って思ってたところなので。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Insight.palette set value {}
data modify storage mob_data: CCHelper.Insight.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["私はカブに全てを喰われた。\\nみんな少ない稼ぎで頑張っていたんだけどね・・・Ⓟ8\\nちょっと手を出しすぎちゃった。","カブはね、即決が大事。\\n得を取るのも、損を抑えるのも。\\n長い目で見れば大きく育つなんて嘘なんだよ。","Ⓟ300なんでこうなったかって？\\n集中のためにギルドハウスの周りを散歩するのが癖なんだけど、\\n落ちたと思ったら・Ⓟ3・Ⓟ3・Ⓟ5","そこには忌まわしき金の...Ⓟ4あⓅ3あⓅ3あⓅ3こⓅ1れⓅ1以Ⓟ1上Ⓟ1思Ⓟ1いⓅ1出Ⓟ1さⓅ1せⓅ1ないⓅ1でⓅ1くⓅ1れⓅ1！Ⓟ1！Ⓟ1！"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {}
data modify storage mob_data: CCHelper.Interact.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInteract

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
