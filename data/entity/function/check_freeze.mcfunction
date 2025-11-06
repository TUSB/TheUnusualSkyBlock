#> entity:check_freeze
##############################
### 投射物等が凍結しているかチェック
##############################

###PortalCooldownの値が1秒前と変化していなければ、凍結していると判断して消す
execute store result score @s _ run data get entity @s PortalCooldown
execute if entity @s[type=#entity:has_in_ground,tag=!Flying] store result score @s _ run function entity:has_in_ground/get/life_to_cooldown

execute if predicate entity:check_freeze if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]
###PortalCooldownを消費しきったときにのみ各種処理を実行する
execute if predicate entity:check_freeze unless score @s _ matches ..0 run tag @s add Garbage
execute if predicate entity:check_freeze if score @s _ matches ..0 run function entity:cooldown

scoreboard players operation @s ProjectileLife = @s _
