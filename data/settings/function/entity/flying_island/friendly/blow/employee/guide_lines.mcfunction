#Function
# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["この島はどこかに留まることはないんだ。\\n今この島がどこにいるかは、ビーコンの色で判断ができる。\\n島の出口のビーコンの色にも対応しているんだよ。","§3緑色§rは交易島につながっているよ。\\nこの駅に来た時はいつも人でにぎわうね。","§7青色§rは水の駅につながっているよ。\\n水のせせらぎを聴いていたら心が安らぐんだ。","§0赤色§rは牢獄の駅につながっているよ。\\nとても高い所に駅があるからめったに利用者はいないね。","エクスプレス券を使うと、いつでもこの島を動かすことができる。\\nその時に、花火の色で次の駅をお知らせするから見逃さないようにね！"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: CCHelper.Interact.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInteract

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
