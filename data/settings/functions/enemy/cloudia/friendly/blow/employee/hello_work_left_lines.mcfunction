#Function
# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["§7青色の職業チケット§rを購入し\\nお好きな職業に就いて下さい。\\nその後§0ゲーム難易度§rを選択した後\\n中央の穴に落ちて下さい。"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Insight.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["この角、実は光るんですよ。\\n夜間でもバッチリ書類が見えます。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInteract

# 位置指定
execute positioned -3736 20 854 if entity @s[distance=..1] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
