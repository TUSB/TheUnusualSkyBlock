##############################
### 敵スキル発動失敗
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $13 Const

### 失敗メッセージ
execute if score $Random Global matches 0 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ようすをうかがっている。"}]
execute if score $Random Global matches 1 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は まごまごしている。"}]
execute if score $Random Global matches 2 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ぼーっとみている。"}]
execute if score $Random Global matches 3 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ボーッとしている。"}]
execute if score $Random Global matches 4 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ヌボーっとしている。"}]
execute if score $Random Global matches 5 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は どうしていいかわからない。"}]
execute if score $Random Global matches 6 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は どうしていいのかわからない！"}]
execute if score $Random Global matches 7 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ＭＰがたりない！"}]
execute if score $Random Global matches 8 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は なにかをおもいだそうとしている！"}]
execute if score $Random Global matches 9 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 魔力を集中させた！"}]
execute if score $Random Global matches 10 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は ぼーっとしている"}]
execute if score $Random Global matches 11 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 自分の肉体に見とれている。"}]
execute if score $Random Global matches 12 run tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は おゆうぎしている。"}]

### 発生確率0%セット
scoreboard players reset $Threshold Global
