##############################
### PortalCooldown0トリガー
##############################

###ObserveCooldown解除
tag @s[tag=!LockTickingTask] remove TickingTask
tag @s remove ObserveCooldown

###隼斬り遅延発動処理
execute if entity @s[tag=FalconSlashed] run function skill_manager:knight/falcon_slash/deal_damage

###ワイルドフレア拡散処理
execute if entity @s[tag=WildFlareSeed] run function skill_manager:hunter/wild_flare/explode

###ブラストスパーク炸裂
execute if entity @s[tag=BlastSpark] run function skill_manager:hunter/blast_spark/explode

###ダークスワンプ処理
execute if entity @s[tag=DarkSwamp] run function skill_manager:black_mage/dark_swamp/tick

###ぽむぽむ花火処理
execute if entity @s[tag=PomPom] run function skill_manager:summoner/pompom/at0

###炸裂弾処理
execute if entity @s[tag=GunPowder] run function entity_manager:ignite

###CooldownRequired処理
tag @s[tag=CooldownRequired] add Garbage
