##############################
### 死の宣告適用
##############################

###---演出---Start
tellraw @a [{"selector":"@s"},{"text":"に死の宣告の効果！","color":"red"}]
###---演出---End
scoreboard players set @s DoomCount 31
