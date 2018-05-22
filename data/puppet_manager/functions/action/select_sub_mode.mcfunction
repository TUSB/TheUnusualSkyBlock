##############################
### からくり移動系選択時サブウェポン行動モード
##############################

scoreboard players set $PupRecordLevelMax PupRecordLevel 0
scoreboard players operation $PupRecordLevelMax PupRecordLevel > @e[tag=PupRecordEntity,tag=!PuppetMove] PupRecordLevel
execute if score $PupRecordLevelMax PupRecordLevel matches 100.. as @e[tag=PupRecordEntity,tag=!PuppetMove] if score @s PupRecordLevel = $PupRecordLevelMax PupRecordLevel run scoreboard players operation $PupMaxRecordType PupRecordType = @s PupRecordType
execute if score $PupMaxRecordType PupRecordType matches 1..2 run tag @s add PupPriorClose
execute if score $PupMaxRecordType PupRecordType matches 3..5 run tag @s add PupPriorLong
execute if score $PupMaxRecordType PupRecordType matches 6..12 run tag @s add PupPriorMaster
