##############################
### 投射物等が凍結しているかチェック
##############################

###PortalCooldownの値が1秒前と変化していなければ、凍結していると判断して消す
execute store result score _ Calc run data get entity @s PortalCooldown
execute if score @s ProjectileLife = _ Calc unless score _ Calc matches 0 run tag @s add Garbage
execute if score @s ProjectileLife = _ Calc if score _ Calc matches 0 if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]
execute if score @s ProjectileLife = _ Calc if score _ Calc matches 0 run function entity:cooldown
execute store result score @s ProjectileLife run data get entity @s PortalCooldown