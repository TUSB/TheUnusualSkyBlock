##############################
### からくり行動不能パス処理
##############################

execute unless entity @e[distance=..3,tag=Mob,limit=1] run scoreboard players set @e[tag=PupRecordEntity,tag=PuppetClose] PupRecordLevel 18
execute unless entity @e[distance=..17,tag=Mob,limit=1] run scoreboard players set @e[tag=PupRecordEntity,tag=PuppetLong] PupRecordLevel 18
