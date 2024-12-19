
# OhMyDat呼び出しとJobStatus操作開始を兼ねる
function job:status/operation_start

# 現在の職業情報を記録する
function job:status/save
function job:status/operation_end

data remove storage tutorial_alpha: push
data modify storage tutorial_alpha: push.backup set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]
data modify storage tutorial_alpha: push.SpawnPoint set value {Dimension:"",Pos:[0d,0d,0d],Rotation:[0f,0f]}
execute store result storage tutorial_alpha: push.SpawnPoint.Pos[0] double 1 run data get entity @s SpawnX
execute store result storage tutorial_alpha: push.SpawnPoint.Pos[1] double 1 run data get entity @s SpawnY
execute store result storage tutorial_alpha: push.SpawnPoint.Pos[2] double 1 run data get entity @s SpawnZ
data modify storage tutorial_alpha: push.SpawnPoint.Dimension set from entity @s SpawnDimension
data modify storage tutorial_alpha: push.Items set from entity @s Inventory
clear @s

execute store result storage tutorial_alpha: push.scores.Job int 1 run scoreboard players get @s Job
execute if entity @s[scores={Kazakiri=1..}] store result storage tutorial_alpha: push.scores.Kazakiri int 1 run scoreboard players get @s Kazakiri
scoreboard players reset @s Kazakiri
execute if entity @s[scores={LightningBlow=1..}] store result storage tutorial_alpha: push.scores.LightningBlow int 1 run scoreboard players get @s LightningBlow
scoreboard players reset @s LightningBlow
execute if entity @s[scores={MagicShield=1..}] store result storage tutorial_alpha: push.scores.MagicShield int 1 run scoreboard players get @s MagicShield
scoreboard players reset @s MagicShield
execute store result storage tutorial_alpha: push.scores.ReactiveLevel int 1 run scoreboard players get @s ReactiveLevel
execute store result storage tutorial_alpha: push.scores.ChoyakuLevel int 1 run scoreboard players get @s ChoyakuLevel
execute store result storage tutorial_alpha: push.scores.WildHealing int 1 run scoreboard players get @s WildHealing
execute store result storage tutorial_alpha: push.scores.SayonaraLevel int 1 run scoreboard players get @s SayonaraLevel
execute store result storage tutorial_alpha: push.scores.TsuremaiLevel int 1 run scoreboard players get @s TsuremaiLevel
function skill:toggle_reset
execute if entity @s[scores={Burst=1..}] run function skill:burst/finish

execute if entity @s[tag=Reraise] run data modify storage tutorial_alpha: push.Tags.Reraise set value true
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=HasRestoreItems] run data modify storage tutorial_alpha: push.Tags.HasRestoreItems set value true
tag @s[tag=HasRestoreItems] remove HasRestoreItems

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tutorial_alpha set from storage tutorial_alpha: push

data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Raise
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].RestoreItemData
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut set value [{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"},{Skill:"<未設定>"}]
data modify storage job: JobStatus set value [{Level:25,Exp:0},{Level:25,Exp:0},{Level:25,Exp:0},{Level:25,Exp:0},{Level:25,Exp:0},{Level:25,Exp:0},{Level:25,Exp:0},{},{}]

scoreboard players set @s Job 0
function job:status/load
function job:status/operation_end
scoreboard players set @s KnightLv 25
scoreboard players set @s NinjaLv 25
scoreboard players set @s HunterLv 25
scoreboard players set @s WhiteMageLv 25
scoreboard players set @s BlackMageLv 25
scoreboard players set @s SummonerLv 25
function effect:status/life_to_max

execute in area:debug_room run spawnpoint @s -4291 33 808

effect give @s minecraft:saturation infinite 0 true
