##############################
### パペット行動ウェイトマルチスレッド補正
##############################

###マルチスレッド補正ウェイト
scoreboard players set @s PuppetWait 0
###マルチスレッド補正行動回数
execute as @e[tag=PupRecordEntity,scores={PupRecordLevel=100..,PupRecordType=..9}] run scoreboard players remove $Action PuppetScore 1
scoreboard players add $Action PuppetScore 1
###マルチスレッド消費
scoreboard players remove @s MultiThread 1
