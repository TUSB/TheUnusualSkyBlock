##############################
### 敵スキル発動失敗
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $13 Const

### 失敗メッセージ
execute if score $Random Global matches 0 run me は ようすをうかがっている。
execute if score $Random Global matches 1 run me は まごまごしている。
execute if score $Random Global matches 2 run me は ぼーっとみている。
execute if score $Random Global matches 3 run me は ボーッとしている。
execute if score $Random Global matches 4 run me は ヌボーっとしている。
execute if score $Random Global matches 5 run me は どうしていいかわからない。
execute if score $Random Global matches 6 run me は どうしていいのかわからない！
execute if score $Random Global matches 7 run me は ＭＰがたりない！
execute if score $Random Global matches 8 run me は なにかをおもいだそうとしている！
execute if score $Random Global matches 9 run me は 魔力を集中させた！
execute if score $Random Global matches 10 run me は ぼーっとしている
execute if score $Random Global matches 11 run me は 自分の肉体に見とれている。
execute if score $Random Global matches 12 run me は おゆうぎしている。

### 発生確率0%セット
scoreboard players reset $Threshold Global
