
### バーストブレイク

scoreboard players operation @s Burst = $World Burst

execute store result score _ _ if entity @a
scoreboard players set _ Calc 6
scoreboard players operation _ Calc *= _ _
scoreboard players add _ Calc 42
scoreboard players operation @s Burst /= _ Calc

### 攻撃上系短め
### 剣士８秒＊１０
execute if score @s Job matches 1 run scoreboard players set _ _ 800
execute if score @s Job matches 1 run scoreboard players operation @s Burst *= _ _
### 忍者１２秒＊１０
execute if score @s Job matches 2 run scoreboard players set _ _ 1200
execute if score @s Job matches 2 run scoreboard players operation @s Burst *= _ _
execute if score @s Job matches 2 run function skill:burst/ninja/act0
### 狩人１０秒＊１０
execute if score @s Job matches 3 run scoreboard players set _ _ 1000
execute if score @s Job matches 3 run scoreboard players operation @s Burst *= _ _
### 白魔１０秒＊１０
execute if score @s Job matches 4 run scoreboard players set _ _ 1000
execute if score @s Job matches 4 run scoreboard players operation @s Burst *= _ _
### 黒魔１５秒＊１０
execute if score @s Job matches 5 run scoreboard players set _ _ 1500
execute if score @s Job matches 5 run scoreboard players operation @s Burst *= _ _
### 召喚２０秒＊１０
execute if score @s Job matches 6 run scoreboard players set _ _ 2000
execute if score @s Job matches 6 run scoreboard players operation @s Burst *= _ _
execute if score @s Job matches 6 run function skill:burst/summoner/act
### 絡繰４秒＊１０
execute if score @s Job matches 7 run scoreboard players set _ _ 400
execute if score @s Job matches 7 run scoreboard players operation @s Burst *= _ _

scoreboard players set $World Burst -1

tellraw @a {"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true}
execute if score @s Job matches 1 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"剣士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのダメージを無効化する。"}}}]}]
execute if score @s Job matches 2 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"忍者のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーの周囲に影分身を召喚する。"}}}]}]
execute if score @s Job matches 3 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"狩人のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーを自動砲台にする。"}}}]}]
execute if score @s Job matches 4 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"白魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーに悪い効果がかからなくなる。"}}}]}]
execute if score @s Job matches 5 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"黒魔導士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルの消費MPが０になる。"}}}]}]
execute if score @s Job matches 6 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"召喚士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内の敵にランダムに弱点属性を付与する。"}}}]}]
execute if score @s Job matches 7 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"translate":"絡繰士のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"範囲内のプレイヤーのスキルレベルが１上昇する。"}}}]}]
# execute if score @s Job matches 8 run tellraw @a ["",{"translate":"%1$sは%2$sを纏った！！！","color":"green","with":[{"selector":"@s"},{"text":"怪盗のオーラ","hoverEvent":{"action":"show_text","contents":{"translate":"ここにバーストの効果を記入"}}}]}]

## バースト ボスバー
# 名前変更
tag @s add BurstBreak
execute if score @s Job matches 1 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"K","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 2 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"N","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 3 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"H","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 4 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"W","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 5 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"B","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 6 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"S","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 7 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"P","font":"icon","color":"aqua"}," >"]'
execute if score @s Job matches 8 run data modify storage skill: Text set value '["",{"text":"～","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"translate":"バーストブレイク！！","color":"gold","italic":true,"bold":true},{"text":"B","obfuscated":true,"color":"gold","italic":true,"bold":true},{"text":"～","color":"gold","italic":true,"bold":true}," ",{"selector":"@a[tag=BurstBreak]"}," < ",{"text":"T","font":"icon","color":"aqua"}," >"]'
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set from storage skill: Text
execute in area:control_area run bossbar set skill:burst name {"block":"2 3 2","nbt":"front_text.messages[0]","interpret":true}
tag @s remove BurstBreak
# 値変更
execute store result bossbar skill:burst value store result bossbar skill:burst max run scoreboard players get @s Burst
bossbar set skill:burst style progress

# ストレージにジョブを保存
    execute store result storage main: System.Burst.Job int 1 run scoreboard players get @s Job

# 演出
function makeup:skill/burst/break 

kill @e[tag=BurstCommand,scores={ParentID=0},distance=..13]
