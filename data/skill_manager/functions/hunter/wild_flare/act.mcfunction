##############################
### ワイルドフレア発動
##############################

###矢修正
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run data merge entity @s {PortalCooldown:2,Tags:[Projectile,Initialized,WildFlareSeed,CooldownRequired]}

###MP消費
scoreboard players operation @s MPConsumption += @s ModeCost
###スキルインターバル設定
scoreboard players set @s SkillInterval 100
