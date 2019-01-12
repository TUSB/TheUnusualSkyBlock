##############################
### ミミック擬態召喚 - Event  
##############################

setblock ~ ~ ~ minecraft:chest{Lock:"§3§kLock§r"} keep 
summon minecraft:silverfish ~ ~ ~ {Silent:true,NoAI:true,Invulnerable:true,DeathTime:19s,Tags:["HasSkill","Call","CallOnFin","TableMountain","Ground","Blow","Trap","MimicChest","CooldownRequired"],PortalCooldown:600s,ActiveEffects:[{Id:14b,Duration:600,Amplifier:127b}],Attributes:[{Name:"generic.followRange",Base:0d},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:1d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]}]}
