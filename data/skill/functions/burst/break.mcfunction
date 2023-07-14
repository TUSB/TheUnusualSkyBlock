
### バーストブレイク

tag @s add BurstBreak
scoreboard players operation @s Burst = $World Burst

scoreboard players set _ Calc 10
scoreboard players operation @s Burst /= _ Calc
execute store result score _ _ if entity @a
scoreboard players remove _ _ 1
scoreboard players operation @s Burst -= _ _

### 攻撃上系短め
### 剣士８秒＊１０
execute if score @s Job matches 1 run scoreboard players set _ _ 800
execute if score @s Job matches 1 run scoreboard players operation @s Burst *= _ _
### 忍者８秒＊１０
execute if score @s Job matches 2 run scoreboard players set _ _ 800
execute if score @s Job matches 2 run scoreboard players operation @s Burst *= _ _
### 狩人４秒＊１０
execute if score @s Job matches 3 run scoreboard players set _ _ 400
execute if score @s Job matches 3 run scoreboard players operation @s Burst *= _ _
### 白魔８秒＊１０
execute if score @s Job matches 4 run scoreboard players set _ _ 800
execute if score @s Job matches 4 run scoreboard players operation @s Burst *= _ _
### 黒魔４秒＊１０
execute if score @s Job matches 5 run scoreboard players set _ _ 400
execute if score @s Job matches 5 run scoreboard players operation @s Burst *= _ _
### 召喚８秒＊１０
execute if score @s Job matches 6 run scoreboard players set _ _ 800
execute if score @s Job matches 6 run scoreboard players operation @s Burst *= _ _
### 絡繰４秒＊１０
execute if score @s Job matches 7 run scoreboard players set _ _ 400
execute if score @s Job matches 7 run scoreboard players operation @s Burst *= _ _

### バースト補正
scoreboard players operation @s Burst *= @s AuraRate
scoreboard players set _ _ 100
scoreboard players operation @s Burst /= _ _

scoreboard players set $World Burst -1

tellraw @a {"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}
execute if score @s Job matches 1 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"剣士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのダメージを無効化する。"}}}]}]
execute if score @s Job matches 2 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"忍者のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーの周囲の敵がスキルを使えなくなる。"}}}]}]
execute if score @s Job matches 3 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"狩人のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのクリティカルダメージが１０倍になる。"}}}]}]
execute if score @s Job matches 4 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"白魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}}]}]
execute if score @s Job matches 5 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}}]}]
execute if score @s Job matches 6 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"召喚士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーがペットにかかっている良い効果と同じ種類の効果を得る。"}}}]}]
execute if score @s Job matches 7 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"絡繰士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}}]}]
execute if score @s Job matches 8 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"怪盗のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"ここにバーストの効果を記入"}}}]}]

## バースト ボスバー
# 名前変更
execute if score @s Job matches 1 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"K","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 2 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"N","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 3 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"H","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 4 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"W","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 5 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"B","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 6 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"S","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 7 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"P","font":"icon","color":"aqua"},">"]'
execute if score @s Job matches 8 run data modify storage skill: Text set value '["",{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"T","font":"icon","color":"aqua"},">"]'
execute in area:control_area run data modify block 2 3 2 Text1 set from storage skill: Text
execute in area:control_area run bossbar set skill:burst name {"block":"2 3 2","nbt":"Text1","interpret":true}
# 値変更
execute store result bossbar skill:burst value store result bossbar skill:burst max run scoreboard players get @s Burst

kill @e[tag=BurstCommand,scores={ParentID=0},distance=..13]
