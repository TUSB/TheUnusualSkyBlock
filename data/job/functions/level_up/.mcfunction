
#前回のレベル保存
scoreboard players operation _ Level = @s Level

function job:level_up/loop

#レベルアップ打ち止め
execute if score @s Level matches 101.. run scoreboard players operation @s Exp = @s RequiredExp
execute if score @s Level matches 101.. run scoreboard players remove @s Exp 1
execute if score @s Level matches 101.. run scoreboard players set @s Level 100

#演出 - サウンド
function makeup:job/level_up/sound

#スコアホルダー節約のため、
#レベルアップ前のレベル: _ Level ,CP: _ Exp
#レベルアップ後のレベル: _ Job ,CP: _ AllExp

scoreboard players operation _ Exp = _ Level
scoreboard players remove _ Exp 50
scoreboard players set _ _ 0
scoreboard players operation _ Exp > _ _

scoreboard players operation _ AllExp = @s Level
scoreboard players remove _ AllExp 50
scoreboard players set _ _ 0
scoreboard players operation _ AllExp > _ _

scoreboard players operation _ Job = @s Level
scoreboard players set _ _ 50
scoreboard players operation _ Job < _ _

scoreboard players operation _ Level < _ _

#演出 - テキスト
function makeup:job/level_up/text

#体力・MP調整

