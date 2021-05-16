
#前回のレベル保存
scoreboard players operation $PreviousLevel _ = @s Level

function job:level_up/loop

#レベルアップ打ち止め
execute if score @s Level matches 101.. run scoreboard players operation @s Exp = @s RequiredExp
execute if score @s Level matches 101.. run scoreboard players remove @s Exp 1
execute if score @s Level matches 101.. run scoreboard players set @s Level 100

#演出 - サウンド
function makeup:job/level_up/sound

scoreboard players operation $PreviousCP _ = $PreviousLevel _
scoreboard players remove $PreviousCP _ 50
scoreboard players set _ _ 0
scoreboard players operation $PreviousCP _ > _ _

scoreboard players operation $CurrentCP _ = @s Level
scoreboard players remove $CurrentCP _ 50
scoreboard players set _ _ 0
scoreboard players operation $CurrentCP _ > _ _

scoreboard players operation $CurrentLevel _ = @s Level
scoreboard players set _ _ 50
scoreboard players operation $CurrentLevel _ < _ _

scoreboard players operation $PreviousLevel _ < _ _

#演出 - テキスト
function makeup:job/level_up/text

#各職のレベルに反映

#体力・MP調整

