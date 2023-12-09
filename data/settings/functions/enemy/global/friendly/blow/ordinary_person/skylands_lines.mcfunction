#Function
# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["§0アナライズ§rは欠かさないに越したことはないね。"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#C6D9CB"
data modify storage mob_data: CCHelper.Repeat.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperRepeat

# 目が合ったら
data modify storage mob_data: CCHelper.Insight.texts set value ["おまえは話が長いってよく言われるんだよね。それでも聞いていくかい？"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#C6D9CB"
data modify storage mob_data: CCHelper.Insight.palette set value {0:'{"text":"","color":"#FF0000"}',1:'{"text":"","color":"#FF8000"}',2:'{"text":"","color":"#FFFF00"}',3:'{"text":"","color":"#B7FF00"}',4:'{"text":"","color":"#00FF00"}',5:'{"text":"","color":"#00FF66"}',6:'{"text":"","color":"#00FFC2"}',7:'{"text":"","color":"#0000FF"}',8:'{"text":"","color":"#AA00FF"}',9:'{"text":"","color":"#FF009A"}',a:'{"text":"","color":"#FFFFFF"}',b:'{"text":"","color":"#cecece"}',c:'{"text":"","color":"#888888"}',d:'{"text":"","color":"#555555"}',e:'{"text":"","color":"#000000"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInsight

# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["おっと、君はしっかり情報を読むタイプかい？\\nじゃあ、君に大事なことを教えてあげよう。ちょっと長くなるけど、よーく聞いてくれよ。\\n\\nこの世界では、名前の色でその者がどんな族なのかが分かるんだ。\\n例えば、僕らの名前が緑色のやつらは「商人 #00FF00」でね、攻撃したら反撃してくるからなかなか強いんだよ。\\n\\n名前が水色のやつらは「気まぐれ商人 #00FFC2」で、時間が経つと商品が変わったりするんだ。\\n無害なんだけど、変人が多いんだよね。あの株頭とかさ。\\nでも、喋ってる村人族は危なくないから安心してくれ。\\n\\n名前が青色のやつらは「闇商人 #0000FF」で、商品を売ってるけど周りに攻撃を仕掛ける危険な奴らだ。\\n堂々と商売してるところは見たことないな。何を考えてるのか謎だよ。\\n\\n名前が白色のやつらは「雑魚 #FFFFFF」で、危険度は低いんだけど、\\n集まって襲ってきたりするから注意が必要だよ。\\n\\n名前が赤色のやつらは「強敵 #FF0000」で、危険度は高いんだ。\\nユニークな動きをするやつらが多いから、警戒しないとダメだよ。\\n\\n名前が黄色のやつらは「友好的 #FFFF00」で、君の味方になってくれるんだ。\\n君の盾にもなるし、矛にもなる。主に召喚で呼び出されることが多いんだよ。\\n\\n名前が橙色のやつらは「中立 #FF8000」で、無害だったり敵味方問わず攻撃したりするんだ。\\nあの殺戮爆弾も実はこの族なんだよ。名前は華やかだけどね。\\n\\n名前が紫色のやつらは「BOSS、UNKNOWN #AA00FF」で、よくわからないけど危険度はすごく高いらしいよ。\\nドロップがいいって話だけど、釣り人がやられたり、木が怒ったり、色々な噂があるんだ。\\n\\n名前がピンク色のやつらは「レア種 #FF009A」で、出会うのは難しくて、逃げるのも早いんだ。\\nドロップもいいんだけど、たまに致命的な反撃をするから、気をつけないといけないよ。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#C6D9CB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#00FF00"}',1:'{"text":"","color":"#00FFC2"}',2:'{"text":"","color":"#0000FF"}',3:'{"text":"","color":"#FFFFFF"}',4:'{"text":"","color":"#FF0000"}',5:'{"text":"","color":"#FFFF00"}',6:'{"text":"","color":"#FF8000"}',7:'{"text":"","color":"#AA00FF"}',8:'{"text":"","color":"#FF009A"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value CCHelperInteract

# ディメンションを判定
execute in area:skylands if loaded ~ ~ ~ run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
