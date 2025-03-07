
function #oh_my_dat:please
data remove storage tutorial_alpha: pop
data modify storage tutorial_alpha: pop set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].tutorial_alpha
clear @s
execute if data storage tutorial_alpha: pop.Items[-1] in area:control_area run function tutorial_alpha:system/inventory/

execute store result score @s Job run data get storage tutorial_alpha: pop.scores.Job
scoreboard players reset @s Kazakiri
execute if data storage tutorial_alpha: pop.scores.Kazakiri store result score @s Kazakiri run data get storage tutorial_alpha: pop.scores.Kazakiri
scoreboard players reset @s LightningBlow
execute if data storage tutorial_alpha: pop.scores.LightningBlow store result score @s LightningBlow run data get storage tutorial_alpha: pop.scores.LightningBlow
scoreboard players reset @s MagicShield
execute if data storage tutorial_alpha: pop.scores.MagicShield store result score @s MagicShield run data get storage tutorial_alpha: pop.scores.MagicShield
function skill:toggle_reset
execute store result score @s ReactiveLevel run data get storage tutorial_alpha: pop.scores.ReactiveLevel
execute store result score @s ChoyakuLevel run data get storage tutorial_alpha: pop.scores.ChoyakuLevel
execute store result score @s WildHealing run data get storage tutorial_alpha: pop.scores.WildHealing
execute store result score @s SayonaraLevel run data get storage tutorial_alpha: pop.scores.SayonaraLevel
execute store result score @s TsuremaiLevel run data get storage tutorial_alpha: pop.scores.TsuremaiLevel

tag @s remove Reraise
execute if data storage tutorial_alpha: pop.Tags{HasRestoreItems:true} run tag @s add HasRestoreItems
execute if data storage tutorial_alpha: pop.Tags{Reraise:true} run tag @s add Reraise

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4] set from storage tutorial_alpha: pop.backup

data modify storage job: JobStatus set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].JobStatus
function job:status/load
function job:status/get_all_job_level
function job:status/operation_end
function effect:status/life_to_max

data modify storage anywhere: at set from storage tutorial_alpha: pop.SpawnPoint
function #anywhere:spawnpoint

effect clear @s
