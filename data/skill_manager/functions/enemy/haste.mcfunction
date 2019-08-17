##############################
### 死亡時ヘイスト
##############################

tellraw @a[distance=..16] [{"selector":"@s"},{"text":" は 最後の力を振り絞り、味方の行動を早めた！"}]
scoreboard players operation @e[tag=Mob,distance=..8,tag=NormalSkill] SkillTimer /= $10 Const

###---演出---Start
###---演出---End
