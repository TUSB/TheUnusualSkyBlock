#> entity:check_freeze
##############################
### 投射物等が凍結しているかチェック
##############################

###PortalCooldownの値が1秒前と変化していなければ、凍結していると判断して消す
execute store result score _ ProjectileLife run data get entity @s PortalCooldown

execute if score @s ProjectileLife = _ ProjectileLife if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]
###PortalCooldownを消費しきったときにのみ各種処理を実行する
execute if score @s ProjectileLife = _ ProjectileLife unless score _ ProjectileLife matches 0 run tag @s add Garbage
execute if score @s ProjectileLife = _ ProjectileLife if score _ ProjectileLife matches 0 run function entity:cooldown

scoreboard players operation @s ProjectileLife = _ ProjectileLife
