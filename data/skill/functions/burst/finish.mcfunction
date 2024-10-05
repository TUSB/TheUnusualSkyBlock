
### バースト終了

##忍者
execute if score @s Job matches 2 run function skill:burst/ninja/finish
##召喚士
execute if score @s Job matches 6 run function skill:burst/summoner/finish

execute if score @s Job matches 1 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"剣士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのダメージを無効化する。"}}}]}]
execute if score @s Job matches 2 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"忍者のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーの周囲に影分身を召喚する。"}}}]}]
execute if score @s Job matches 3 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"狩人のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーを自動砲台にする。"}}}]}]
execute if score @s Job matches 4 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"白魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}}]}]
execute if score @s Job matches 5 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}}]}]
execute if score @s Job matches 6 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"召喚士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内の敵にランダムに弱点属性を付与する。"}}}]}]
execute if score @s Job matches 7 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"selector":"@s"},{"translate":"絡繰士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}}]}]

# ボスバー修正
bossbar set skill:burst name {"translate":"バーストゲージ","italic":true,"bold":true}
function skill:burst/required_amount
scoreboard players set $World Burst 0
bossbar set skill:burst style notched_6
function skill:burst/bossbar

data remove storage main: System.Burst.Job
scoreboard players reset @s Burst
