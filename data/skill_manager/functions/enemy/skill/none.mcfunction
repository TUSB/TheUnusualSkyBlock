##############################
### 敵スキル発動失敗
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $13 Const

### 失敗メッセージ
execute if score $Random Global matches 0 run say は ようすをうかがっている。
execute if score $Random Global matches 1 run say は まごまごしている。
execute if score $Random Global matches 2 run say は ぼーっとみている。
execute if score $Random Global matches 3 run say は ボーッとしている。
execute if score $Random Global matches 4 run say は ヌボーっとしている。
execute if score $Random Global matches 5 run say は どうしていいかわからない。
execute if score $Random Global matches 6 run say は どうしていいのかわからない！
execute if score $Random Global matches 7 run say は ＭＰがたりない！
execute if score $Random Global matches 8 run say は なにかをおもいだそうとしている！
execute if score $Random Global matches 9 run say は 魔力を集中させた！
execute if score $Random Global matches 10 run say は ぼーっとしている
execute if score $Random Global matches 11 run say は 自分の肉体に見とれている。
execute if score $Random Global matches 12 run say は おゆうぎしている。

### 発生確率0%セット
scoreboard players reset $Threshold Global
