##############################
### ダークスワンプ発動２
##############################

### ダークスワンプスコア付与
scoreboard players set @s DarkSwamp 5
scoreboard players operation @s ID = $DarkSwamp ID
scoreboard players operation @s SkillAttribute = $AbsorbRate Global
###---演出---Start
### ダークスワンプパーティクル表示
particle minecraft:squid_ink ~ ~ ~ 2.5 0.2 2.5 0 80 force @a[tag=ShowParticles]
###---演出---End
tag @s remove Initializing
