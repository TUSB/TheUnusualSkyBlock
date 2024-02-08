#Function
# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["重みが違うのだよ。重みが。"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 1f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Repeat.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: CCHelper.Repeat.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperRepeat

# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["「§5ギガントエメラルド§r」をご存じかえ？\\n１つで§5メガトン64個§r分、§5エメラルド換算で4096個§rの価値。\\nちんは金持ち向けの商品を取り扱っておるのだ。\\n高い？Ⓟ30いやなら買わなくていいんじゃよ？"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 1f
data modify storage mob_data: CCHelper.Insight.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Insight.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: CCHelper.Insight.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["冷やかしはやめるのじゃぞ。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 1f
data modify storage mob_data: CCHelper.Interact.background set value "#FFC6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: CCHelper.Interact.text_format set value '{"text":"","color":"#303030"}'
data modify storage mob_data: Tags append value CCHelperInteract

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
