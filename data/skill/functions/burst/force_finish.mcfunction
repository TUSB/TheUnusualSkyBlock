#> skill:burst/force_finish
#
# バースト強制終了
#
# @within function skill:burst/condition

# ストレージからジョブを取り出す
    execute store result score _ Job run data get storage main: System.Burst.Job

##忍者
    execute if score _ Job matches 2 run function skill:burst/ninja/finish
##召喚士
    execute if score _ Job matches 6 run bossbar remove skill:burst_summoner

    execute if score _ Job matches 1 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"剣士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのダメージを無効化する。"}}]}]
    execute if score _ Job matches 2 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"忍者のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーの周囲に影分身を召喚する。"}}]}]
    execute if score _ Job matches 3 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"狩人のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーを自動砲台にする。"}}]}]
    execute if score _ Job matches 4 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"白魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}]}]
    execute if score _ Job matches 5 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}]}]
    execute if score _ Job matches 6 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"召喚士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内の敵にランダムに弱点属性を付与する。"}}]}]
    execute if score _ Job matches 7 run tellraw @a ["",{"translate":"%1$sの%2$sの効果が切れた。","color":"light_purple","with":[{"text":"Player","obfuscated":true},{"text":"絡繰士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}]}]

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

# ストレージリセット
    data remove storage main: System.Burst.Job