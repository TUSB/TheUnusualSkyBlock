#Function
# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["安いポーションはいらんかねー？"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFF8EB"
data modify storage mob_data: CCHelper.Repeat.palette set value {0:'{"text":"","color":"#00FF00"}',1:'{"text":"","color":"#599349"}',2:'{"text":"","color":"#0000FF"}',3:'{"text":"","color":"#FFFFFF"}',4:'{"text":"","color":"#FF0000"}',5:'{"text":"","color":"#FFFF00"}',6:'{"text":"","color":"#FF8000"}',7:'{"text":"","color":"#AA00FF"}',8:'{"text":"","color":"#FF009A"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperRepeat

# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["いらっしゃい。§fここでは§1一般的な薬§rを売っているよ。§f気になるものがあれば購入していってね。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFF8D6"
data modify storage mob_data: CCHelper.Insight.palette set value {0:'{"text":"","color":"#00FF00"}',1:'{"text":"","color":"#599349"}',2:'{"text":"","color":"#0000FF"}',3:'{"text":"","color":"#FFFFFF"}',4:'{"text":"","color":"#FF0000"}',5:'{"text":"","color":"#FFFF00"}',6:'{"text":"","color":"#FF8000"}',7:'{"text":"","color":"#AA00FF"}',8:'{"text":"","color":"#FF009A"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["エーテルは健康に良いと聞くが本当か？§f過去に飲んでる人がいたらしいが経験談として§fガソリンみたいに不味いらしい。§fまさかあんた過去に飲 ん で服用したりは・・・してないよな？"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFF8EB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#00FF00"}',1:'{"text":"","color":"#599349"}',2:'{"text":"","color":"#0000FF"}',3:'{"text":"","color":"#FFFFFF"}',4:'{"text":"","color":"#FF0000"}',5:'{"text":"","color":"#FFFF00"}',6:'{"text":"","color":"#FF8000"}',7:'{"text":"","color":"#AA00FF"}',8:'{"text":"","color":"#FF009A"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInteract

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
