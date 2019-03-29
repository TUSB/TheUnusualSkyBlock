##############################
### 飛翔物等が凍結しているかチェック
##############################

###PortalCooldownの値が１秒前と変化していなければ、凍結していると判断して消す
execute store result score $PortalCooldown Global run data get entity @s PortalCooldown
execute if score @s[tag=CallOnTimeOut] ProjectileLife = $PortalCooldown Global positioned as @s run function enemy_manager:spawn/allocate_dimension
execute if score @s ProjectileLife = $PortalCooldown Global run function entity_manager:garbage_collection
scoreboard players operation @s ProjectileLife = $PortalCooldown Global
