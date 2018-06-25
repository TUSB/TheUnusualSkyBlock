##############################
### PortalCooldownXトリガー
##############################

execute if entity @s[nbt={PortalCooldown:0}] run function trigger_manager:cooldown/at0
