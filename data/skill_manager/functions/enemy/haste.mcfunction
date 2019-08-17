##############################
### ヘイスト
##############################

#tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 最後の力を振り絞り、味方の行動を早めた！"}]
scoreboard players operation @e[tag=Mob,distance=..8,tag=NormalSkill] SkillTimer /= $10 Const

###---演出---Start
particle minecraft:sweep_attack ~ ~ ~ 3 0 3 0 20 force
particle minecraft:happy_villager ~ ~ ~ 3 0 3 0 20 force
playsound minecraft:item.trident.riptide_1 master @a[distance=..16] ~ ~ ~ 1 1.5
###---演出---End
