##############################
### ステータス表示
##############################

function skill_manager:show_skill/current

scoreboard players operation $CurrentLevel Global = @s Level
scoreboard players operation $CurrentLevel Global < $50 Const
scoreboard players operation $CurrentCP Global = @s Level
scoreboard players remove $CurrentCP Global 50
scoreboard players operation $CurrentCP Global > $0 Const

execute if entity @s[scores={Job=1,Level=..49}] run tellraw @s [""," JOB:",{"text":"剣士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=1,Level=50..}] run tellraw @s [""," JOB:",{"text":"剣士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=2,Level=..49}] run tellraw @s [""," JOB:",{"text":"忍者","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=2,Level=50..}] run tellraw @s [""," JOB:",{"text":"忍者","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=3,Level=..49}] run tellraw @s [""," JOB:",{"text":"狩人","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=3,Level=50..}] run tellraw @s [""," JOB:",{"text":"狩人","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=4,Level=..49}] run tellraw @s [""," JOB:",{"text":"白魔導士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=4,Level=50..}] run tellraw @s [""," JOB:",{"text":"白魔導士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=5,Level=..49}] run tellraw @s [""," JOB:",{"text":"黒魔導士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=5,Level=50..}] run tellraw @s [""," JOB:",{"text":"黒魔導士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=6,Level=..49}] run tellraw @s [""," JOB:",{"text":"召喚士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=6,Level=50..}] run tellraw @s [""," JOB:",{"text":"召喚士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]
execute if entity @s[scores={Job=7,Level=..49}] run tellraw @s [""," JOB:",{"text":"絡繰士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"}]
execute if entity @s[scores={Job=7,Level=50..}] run tellraw @s [""," JOB:",{"text":"絡繰士","color":"green"}," ","LV:",{"score":{"name":"$CurrentLevel","objective":"Global"},"color":"green"}," ","CP:",{"score":{"name":"$CurrentCP","objective":"Global"},"color":"green"}," ","EXP:",{"score":{"name":"@s","objective":"Exp"},"color":"green"},"/",{"score":{"name":"@s","objective":"RequiredExp"},"color":"green"},"   ",{"text":"⇨ 潜在能力を引き上げる","clickEvent":{"action":"run_command","value":"/trigger PotentialTrigger set 1"}}]

scoreboard players operation $LevelKnight Global = @s LevelKnight
scoreboard players operation $LevelNinja Global = @s LevelNinja
scoreboard players operation $LevelHunter Global = @s LevelHunter
scoreboard players operation $LevelWhiteMage Global = @s LevelWhiteMage
scoreboard players operation $LevelBlackMage Global = @s LevelBlackMage
scoreboard players operation $LevelSummoner Global = @s LevelSummoner
scoreboard players operation $LevelPupMaster Global = @s LevelPupMaster

scoreboard players operation $LevelKnight Global < $50 Const
scoreboard players operation $LevelNinja Global < $50 Const
scoreboard players operation $LevelHunter Global < $50 Const
scoreboard players operation $LevelWhiteMage Global < $50 Const
scoreboard players operation $LevelBlackMage Global < $50 Const
scoreboard players operation $LevelSummoner Global < $50 Const
scoreboard players operation $LevelPupMaster Global < $50 Const

tellraw @s [""," 剣士:",{"score":{"name":"$LevelKnight","objective":"Global"},"color":"green"}," 忍者:",{"score":{"name":"$LevelNinja","objective":"Global"},"color":"green"}," 狩人:",{"score":{"name":"$LevelHunter","objective":"Global"},"color":"green"}," 白魔導士:",{"score":{"name":"$LevelWhiteMage","objective":"Global"},"color":"green"}," 黒魔導士:",{"score":{"name":"$LevelBlackMage","objective":"Global"},"color":"green"}," 召喚士:",{"score":{"name":"$LevelSummoner","objective":"Global"},"color":"green"}," 絡繰士:",{"score":{"name":"$LevelPupMaster","objective":"Global"},"color":"green"}]

scoreboard players enable @s PotentialTrigger
