#> entity:cooldown
##############################
### PortalCooldown0トリガー
##############################

###死亡処理
tag @s add Garbage

###CallOnTimeOut
execute if entity @s[tag=CallOnTimeOut] run function enemy:ai/call/trigger/time

###ダークスワンプ処理
execute if entity @s[tag=DarkSwamp] run function skill:act/black_mage/dark_swamp/tick

###ブラストスパーク炸裂
execute if entity @s[tag=BlastSpark] run function skill:act/hunter/blast_spark/explode

###ワイルドフレア拡散処理
execute if entity @s[tag=WildFlareSeed] run function skill:act/hunter/wild_flare/explode
