#Function
# 改行はskill: NewLineを使わせてもらう。
# §fで改行可
# 話し掛けたら
data modify storage mob_data: CCHelper.Interact.texts set value ["おっと、君はしっかり情報を読むタイプかい？§fじゃあ、君に大事なことを教えてあげよう。ちょっと長くなるけど、よーく聞いてくれよ。§f §fこの世界では、名前の色でその者がどんな族なのかが分かるんだ。§f例えば、僕らの名前が緑色のやつらは「§0商人§r」でね、攻撃したら反撃してくるからなかなか強いんだよ。§f §f名前が水色のやつらは「§1気まぐれ商人§r」で、時間が経つと商品が変わったりするんだ。§f無害なんだけど、変人が多いんだよね。あの株頭とかさ。§fでも、喋ってる村人族は危なくないから安心してくれ。§f §f名前が青色のやつらは「§2闇商人§r」で、商品を売ってるけど周りに攻撃を仕掛ける危険な奴らだ。§f堂々と商売してるところは見たことないな。何を考えてるのか謎だよ。§f §f名前が白色のやつらは「§3雑魚§r」で、危険度は低いんだけど、§f集まって襲ってきたりするから注意が必要だよ。§f §f名前が赤色のやつらは「§4強敵§r」で、危険度は高いんだ。§fユニークな動きをするやつらが多いから、警戒しないとダメだよ。§f §f名前が黄色のやつらは「§5友好的§r」で、君の味方になってくれるんだ。§f君の盾にもなるし、矛にもなる。主に召喚で呼び出されることが多いんだよ。§f §f名前が橙色のやつらは「§6中立§r」で、無害だったり敵味方問わず攻撃したりするんだ。§fあの殺戮爆弾も実はこの族なんだよ。名前は華やかだけどね。§f §f名前が紫色のやつらは「§7BOSS、UNKNOWN§r」で、よくわからないけど危険度はすごく高いらしいよ。§fドロップがいいって話だけど、釣り人がやられたり、木が怒ったり、色々な噂があるんだ。§f §f名前がピンク色のやつらは「§8レア種§r」で、出会うのは難しくて、逃げるのも早いんだ。§fドロップもいいんだけど、たまに致命的な反撃をするから、気をつけないといけないよ。"]
data modify storage mob_data: CCHelper.Interact.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Interact.background set value "#FFF8EB"
data modify storage mob_data: CCHelper.Interact.palette set value {0:'{"text":"","color":"#00FF00"}',1:'{"text":"","color":"#00FFC2"}',2:'{"text":"","color":"#0000FF"}',3:'{"text":"","color":"#FFFFFF"}',4:'{"text":"","color":"#FF0000"}',5:'{"text":"","color":"#FFFF00"}',6:'{"text":"","color":"#FF8000"}',7:'{"text":"","color":"#AA00FF"}',8:'{"text":"","color":"#FF009A"}',f:'{"storage":"skill:","nbt":"NewLine","interpret":true}'}
data modify storage mob_data: Tags append value "CCHelperInteract"

# 目があったら
data modify storage mob_data: CCHelper.Insight.texts set value ["おまえは話が長いってよく言われるんだよね。それでも聞いていくかい？"]
data modify storage mob_data: CCHelper.Insight.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Insight.background set value "#FFF8D6"
data modify storage mob_data: Tags append value "CCHelperInsight"

# 定期的に
data modify storage mob_data: CCHelper.Repeat.texts set value ["§cアナライズ§rは欠かさないに越したことはないね。"]
data modify storage mob_data: CCHelper.Repeat.y_offset set value 0.6f
data modify storage mob_data: CCHelper.Repeat.background set value "#FFF8EB"
data modify storage mob_data: Tags append value "CCHelperRepeat"

# ディメンションを判定
execute in area:skylands if loaded ~ ~ ~ run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].CCHelper set from storage mob_data: CCHelper
