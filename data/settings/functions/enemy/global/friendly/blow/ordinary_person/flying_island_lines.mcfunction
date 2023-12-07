#Function
# 改行はskill: NewLineを使わせてもらう。
# §fで改行可
# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["ここに来るのはもしかして初めてかな？§fここは飛空島だよ。かつてここには何かの装置があったみたい。§fきっと重要な施設だったんだろうなー。君はどう思う？§fここに住む族に聞いてみたんだけど、「記念碑として残している」らしいんだ。§f何か卵を使用して力を得ていたらしいよ。僕の考えとしてはきっと職業に関係していたんだろうね。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFF8EB"
data modify storage mob_data: CCHelper.Interact.palette set value {f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value "CCHelperInteract"

# 目があったら
data modify storage mob_data: CCHelper.Insight.texts set value ["やぁ、また会ったね。§fねぇ知ってるかい？§fチェストがある程度あって、ベットが存在した状態だと§fそこを初期地点として設定できるログが機能するんだ。§fこれを設定することでテレポート系のスキルが機能するよ。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFF8D6"
data modify storage mob_data: CCHelper.Insight.palette set value {f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value "CCHelperInsight"

# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["ここは何時来ても興味深いものが多いね。"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFF8EB"
data modify storage mob_data: Tags append value "CCHelperRepeat"

# ディメンションを判定
execute in area:flying_island if loaded ~ ~ ~ run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
