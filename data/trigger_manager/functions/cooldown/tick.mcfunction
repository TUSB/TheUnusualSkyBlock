##############################
### PortalCooldownXトリガー
##############################

execute if entity @s[nbt={PortalCooldown:0}] run function trigger_manager:cooldown/at0

execute if entity @s[tag=BlastSpark] run function skill_manager:hunter/blast_spark/direction
