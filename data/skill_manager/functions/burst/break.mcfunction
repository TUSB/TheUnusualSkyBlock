##############################
### バースト発動
##############################

scoreboard players operation $AuraLife Global = バースト MP
scoreboard players operation $AuraLife Global /= $10000 Const
### 攻撃上系短め
### 剣士８秒＊１０
execute if score @s Job matches 1 run scoreboard players operation $AuraLife Global *= $800 Const
### 忍者８秒＊１０
execute if score @s Job matches 2 run scoreboard players operation $AuraLife Global *= $800 Const
### 狩人４秒＊１０
execute if score @s Job matches 3 run scoreboard players operation $AuraLife Global *= $400 Const
### 白魔８秒＊１０
execute if score @s Job matches 4 run scoreboard players operation $AuraLife Global *= $800 Const
### 黒魔４秒＊１０
execute if score @s Job matches 5 run scoreboard players operation $AuraLife Global *= $400 Const
### 召喚８秒＊１０
execute if score @s Job matches 6 run scoreboard players operation $AuraLife Global *= $800 Const
### 絡繰４秒＊１０
execute if score @s Job matches 7 run scoreboard players operation $AuraLife Global *= $400 Const

### オーラポテンシャル補正
scoreboard players operation $AuraLife Global *= @s AuraRate
scoreboard players operation $AuraLife Global /= $100 Const

scoreboard players operation @s Aura > $AuraLife Global

scoreboard players reset バースト MP

execute as @a run function effect_manager:reload
tellraw @a {"text":"バーストブレイク！！","color":"gold","italic":true,"bold":true}
execute if score @s Job matches 1 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"剣士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのダメージを無効化する。"}}]}]
execute if score @s Job matches 2 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"忍者のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーの周囲の敵がスキルを使えなくなる。"}}]}]
execute if score @s Job matches 3 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"狩人のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのクリティカルダメージが１０倍になる。"}}]}]
execute if score @s Job matches 4 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"白魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}]}]
execute if score @s Job matches 5 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}]}]
execute if score @s Job matches 6 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"召喚士のオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーがペットにかかっている良い効果と同じ種類の効果を得る。"}}]}]
execute if score @s Job matches 7 run tellraw @a [{"selector":"@s"},{"translate":"は%1$sを纏った！！！","color":"green","with":[{"text":"絡繰士ののオーラ","hoverEvent":{"action":"show_text","value":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}]}]

###---演出---Start
playsound minecraft:entity.illusioner.cast_spell master @a ~ ~ ~ 6 0.5
###---演出---End

function skill_manager:burst/reset
