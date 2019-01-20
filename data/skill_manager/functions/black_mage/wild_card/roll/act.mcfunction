##############################
### ワイルドカード発動 -roll
##############################

#-130~0:バナー回転 0で効果決定 1AB0ECDの7桁に更新

#ワイルドカードは
#A:0~4「あなたを中心に / あなたの目の前を中心に / あなたの少し前を中心に / あなたのかなり先を中心に / あなたのずっと先を中心に」
#B:0~3「すぐに / 少し遅れて / かなり遅れて / 忘れた頃に」
#C:0~3「とても狭い / 狭い / 広い / とても広い」
#D:0~3「とても弱い / 弱い / 強い / とても強い」
#E:0~3「とても短い / 短い / 長い / とても長い」
#F:0~3「防御力を高める / 回復する / ダメージを与える」
#魔法に変化した！！！

scoreboard players set @s WildCard -130

summon minecraft:area_effect_cloud 0 0 0 {Tags:[Banner,Center,Initializing],Duration:131}
tp @e[tag=Initializing,limit=1] ~ ~ ~ ~30 0
scoreboard players operation @e[tag=Initializing,limit=1] ID = @s ID
tag @e[tag=Initializing,limit=1] remove Initializing

#CastIDに移行
execute if score @s ModeSkillRed matches 51061..51069 run scoreboard players add @s ModeSkillRed 10
execute if score @s ModeSkillBlue matches 51061..51069 run scoreboard players add @s ModeSkillBlue 10

scoreboard players operation @s[tag=ModeRed] ModeSkill = @s ModeSkillRed
scoreboard players operation @s[tag=ModeBlue] ModeSkill = @s ModeSkillBlue
scoreboard players operation @s[tag=ModeRed] ModeCost = $5107 Cost
scoreboard players operation @s[tag=ModeBlue] ModeCost = $5107 Cost
scoreboard players operation @s[tag=ModeRed] ModeInterval = $5107 Interval
scoreboard players operation @s[tag=ModeBlue] ModeInterval = $5107 Interval

###---演出---Start
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:block.enchantment_table.use master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:block.beacon.ambient master @a[distance=..16] ~ ~ ~ 1 2
particle minecraft:witch ~ ~0.1 ~ 1 0 1 1 50 force @a[tag=ShowParticles]
###---演出---End
