#> entity:cooldown
##############################
### PortalCooldown0トリガー
##############################

###死亡処理
tag @s add Garbage

###CallOnTimeOut
execute if entity @s[tag=CallOnTimeOut] run function ai:call/trigger/time

###ダークスワンプ処理
execute if entity @s[tag=DarkSwamp] run function skill:act/black_mage/dark_swamp/tick

###ブラストスパーク炸裂
execute if entity @s[tag=BlastSpark] run function skill:act/hunter/blast_spark/explode

###ワイルドフレア拡散/失敗処理
execute if entity @s[tag=WildFlareSeed,tag=Flying] run function skill:act/hunter/wild_flare/explode
execute if entity @s[tag=WildFlareSeed,tag=!Flying] run function makeup:skill/act/hunter/wild_flare/failed

### ヘイローバウンド終了
execute if entity @s[tag=HaloBound] run function skill:act/white_mage/halo_bound/act2
