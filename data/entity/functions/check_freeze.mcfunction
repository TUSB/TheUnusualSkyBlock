##############################
### 投射物等が凍結しているかチェック
##############################

###PortalCooldownの値が1秒前と変化していなければ、凍結していると判断して消す
execute store result score _ Calc run data get entity @s PortalCooldown
# TODO: CallOnTimeOut
#execute if score @s[tag=CallOnTimeOut] ProjectileLife = _ Calc positioned as @s run function enemy_manager:spawn/allocate_dimension
execute if score @s ProjectileLife = _ Calc run tag @s add Garbage
scoreboard players operation @s ProjectileLife = _ Calc
