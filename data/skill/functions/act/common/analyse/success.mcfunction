
### 補足成功

execute as @e[tag=Mob,distance=..0.01,sort=nearest,limit=1] run function oh_my_dat:please
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run tellraw @s [{"translate":"アナライズ：【 %1$s 】","with":[{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].\"ステータス\".CustomName","interpret":true}]}]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run tellraw @s [{"translate":"アナライズ：【 %1$s 】","with":[{"entity":"@e[tag=Mob,distance=..0.01,sort=nearest,limit=1]","nbt":"CustomName","interpret":true}]}]

scoreboard players set _ _ 100
scoreboard players operation _ Level = @e[tag=Mob,distance=..0.01,sort=nearest,limit=1] Level
scoreboard players add @s Level 5
scoreboard players add _ Level 5
scoreboard players operation _ Level *= _ _
scoreboard players operation _ Level /= @s Level
scoreboard players remove @s Level 5

execute if score _ Level matches 2001.. run tellraw @s {"text":"-----------------","obfuscated": true}
execute if score _ Level matches 1001..2000 run tellraw @s {"translate":"相手が巨人だとすれば、あなたは蟻のフン以下だ。"}
execute if score _ Level matches 501..1000 run tellraw @s {"translate":"絶対に勝てない相手だ。"}
execute if score _ Level matches 301..500 run tellraw @s {"translate":"確実に殺されるだろう。"}
execute if score _ Level matches 201..300 run tellraw @s {"translate":"奇跡が起きなければ殺されるだろう。"}
execute if score _ Level matches 151..200 run tellraw @s {"translate":"少なくとも、あなたの倍は強そうだ。"}
execute if score _ Level matches 101..150 run tellraw @s {"translate":"相手はかなり強そうだ。"}
execute if score _ Level matches 67..100 run tellraw @s {"translate":"勝てない相手ではない。"}
execute if score _ Level matches 51..66 run tellraw @s {"translate":"たぶん勝てそうだ。"}
execute if score _ Level matches 34..50 run tellraw @s {"translate":"負ける気はしない。"}
execute if score _ Level matches 21..33 run tellraw @s {"translate":"目隠ししていても勝てそうだ。"}
execute if score _ Level matches ..20 run tellraw @s {"translate":"目隠しして座っていても勝てる。"}

execute if entity @e[tag=Mob,tag=AnalyseLog,distance=..0.01,sort=nearest,limit=1] run tellraw @s [{"text":""},{"text":"m","font":"icon"},{"text":" "},{"storage":"oh_my_dat:","nbt":"_[-4][-4][-4][-4][-4][-4][-4][-4].\"ステータス\".AnalyseLog","interpret":true}]

execute facing entity @s eyes positioned ^ ^ ^1 facing ^ ^ ^-1 rotated ~ ~-90 anchored eyes run function makeup:skill/act/common/analyse/success
