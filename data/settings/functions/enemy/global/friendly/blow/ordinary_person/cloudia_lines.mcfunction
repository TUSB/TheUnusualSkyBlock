#Function
# 改行はskill: NewLineを使わせてもらう。
# §fで改行可
# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["ああそうそう、僕は各地にいると思うから§f気になったら声をかけてみてよ。損はさせないからさ。§fそれじゃあ気を付けてね。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFF8EB"
data modify storage mob_data: CCHelper.Interact.palette set value {f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value "CCHelperInteract"

# 目があったら
data modify storage mob_data: CCHelper.Insight.texts set value ["おや、初めましてかな？ 僕は「モノシリー」色々な場所を巡っている村人だよ。§f僕の役目は君のような存在に情報を提供することさ。","チュートリアルは済ませたかな？ 初めてならそこの§b主張が激しい看板§rを右クリックするといいよ。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFF8D6"
data modify storage mob_data: CCHelper.Insight.palette set value {f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value "CCHelperInsight"

# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["ようこそ。プレイヤーさん。"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFF8EB"
data modify storage mob_data: Tags append value "CCHelperRepeat"

# ディメンションを判定
execute in area:cloudia if loaded ~ ~ ~ run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
