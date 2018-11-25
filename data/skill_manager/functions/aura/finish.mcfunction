##############################
### オーラ終了
##############################

execute if score @s Job matches 1 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"剣士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのダメージを無効化する。"}}]}]
execute if score @s Job matches 2 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"忍者のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーの周囲の敵がスキルを使えなくなる。"}}]}]
execute if score @s Job matches 3 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"狩人のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのクリティカルダメージが１０倍になる。"}}]}]
execute if score @s Job matches 4 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"白魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}]}]
execute if score @s Job matches 5 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}]}]
execute if score @s Job matches 6 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"召喚士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーがペットにかかっている良い効果と同じ種類の効果を得る。"}}]}]
execute if score @s Job matches 7 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sの効果が切れた。","color":"light_purple","with":[{"text":"絡繰士ののオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}]}]

scoreboard players reset @s Aura
