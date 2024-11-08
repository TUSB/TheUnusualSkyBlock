#> job:level_up/
#前回のレベル保存
scoreboard players operation _ Level = @s Level

function job:level_up/loop

#レベルアップ打ち止め
execute if score @s Level matches 101.. run scoreboard players set @s Exp 0
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

#スキル習得表示
execute if score _ Level matches ..50 run function job:level_up/acquirement/

#体力・MP調整
function effects:status/life_to_max

#スキルレベル更新
execute if score @s Job matches 1 run scoreboard players operation @s KnightLv = @s Level
execute if score @s Job matches 2 run scoreboard players operation @s NinjaLv = @s Level
execute if score @s Job matches 3 run scoreboard players operation @s HunterLv = @s Level
execute if score @s Job matches 4 run scoreboard players operation @s WhiteMageLv = @s Level
execute if score @s Job matches 5 run scoreboard players operation @s BlackMageLv = @s Level
execute if score @s Job matches 6 run scoreboard players operation @s SummonerLv = @s Level
execute if score @s Job matches 7 run scoreboard players operation @s PuppetMasterLv = @s Level
execute if score @s Job matches 8 run scoreboard players operation @s ThiefLv = @s Level
