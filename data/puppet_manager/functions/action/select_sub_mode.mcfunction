##############################
### からくり移動系選択時サブウェポン行動モード
##############################

###機動力でないレコード種類から最大レコードレベルを取得する
scoreboard players set $PupRecordLevelMax PupRecordLevel 0
scoreboard players operation $PupRecordLevelMax PupRecordLevel > @e[tag=PupRecordEntity,tag=!PuppetMove] PupRecordLevel
###機動力以外で最大レコードレベルが１００以上(レコードがスロットに存在する)場合、そのレコード種別を取得
execute if score $PupRecordLevelMax PupRecordLevel matches 100.. as @e[tag=PupRecordEntity,tag=!PuppetMove] if score @s PupRecordLevel = $PupRecordLevelMax PupRecordLevel run scoreboard players operation $PupMaxRecordType PupRecordType = @s PupRecordType
###最大レベルのレコード種別に応じて、行動基準を変更する
execute if score $PupMaxRecordType PupRecordType matches 1..2 run tag @s add PupPriorClose
execute if score $PupMaxRecordType PupRecordType matches 3..5 run tag @s add PupPriorLong
execute if score $PupMaxRecordType PupRecordType matches 6..12 run tag @s add PupPriorMaster
