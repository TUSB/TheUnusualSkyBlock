#> score_damage:core/get_default_epf/enchant/blast
#
# 爆発耐性のEPFを取得します
#
# @within function score_damage:core/get_default_epf/

# 0
    execute store result score $Temp ScoreDamageCore run data get storage score_damage: Protection[0][{id:"minecraft:blast_protection"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $2 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 1
    execute store result score $Temp ScoreDamageCore run data get storage score_damage: Protection[1][{id:"minecraft:blast_protection"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $2 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 2
    execute store result score $Temp ScoreDamageCore run data get storage score_damage: Protection[2][{id:"minecraft:blast_protection"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $2 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore
# 3
    execute store result score $Temp ScoreDamageCore run data get storage score_damage: Protection[3][{id:"minecraft:blast_protection"}].lvl
    scoreboard players operation $Temp ScoreDamageCore *= $2 ScoreDamageCore
    scoreboard players operation $EPF ScoreDamageCore += $Temp ScoreDamageCore