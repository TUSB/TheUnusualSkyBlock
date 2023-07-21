
### バースト終了

##召喚士
execute if score @s Job matches 6 run function skill:burst/summoner/finish

execute if score @s Job matches 1 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"剣士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのダメージを無効化する。"}}]}]
execute if score @s Job matches 2 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"忍者のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーの周囲の敵がスキルを使えなくなる。"}}]}]
execute if score @s Job matches 3 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"狩人のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのクリティカルダメージが１０倍になる。"}}]}]
execute if score @s Job matches 4 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"白魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}]}]
execute if score @s Job matches 5 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}]}]
execute if score @s Job matches 6 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"召喚士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーがペットにかかっている良い効果と同じ種類の効果を得る。"}}]}]
execute if score @s Job matches 7 run tellraw @a ["",{"translate":"%1$sは%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"text":"絡繰士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}]}]

# ボスバー修正
bossbar set skill:burst name {"translate":"バーストゲージ","italic":true,"bold":true}
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players add _ _ 10
scoreboard players set _ Calc 30
execute store result bossbar skill:burst max run scoreboard players operation _ _ *= _ Calc
scoreboard players set $World Burst 0
bossbar set skill:burst style notched_6
function skill:burst/bossbar

tag @s remove BurstBreak
scoreboard players reset @s Burst
