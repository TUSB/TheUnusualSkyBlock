##############################
### エンダーミミック擬態召喚 - Event  
##############################

setblock ~ ~ ~ minecraft:ender_chest keep 
summon minecraft:silverfish ~ ~ ~ {Silent:true,NoAI:true,Invulnerable:true,DeathTime:19s,Tags:["HasSkill","Call","CallOnFin","Tablemountain","Ground","Blow","Trap","MimicEnderchest","CooldownRequired"],PortalCooldown:600s,ActiveEffects:[{Id:14b,Duration:1200,Amplifier:127b}],Attributes:[{Name:"generic.followRange",Base:0d},{Name:"generic.knockbackResistance",Modifiers:[{Amount:1d,UUIDLeast:0l},{Amount:1d,UUIDLeast:1l},{Amount:100d,UUIDLeast:2l}]}]}
execute align xyz positioned ~0.5 ~-0.1 ~0.5 run summon armor_stand ~ ~ ~ {Marker:true,NoGravity:true,Invisible:true,Tags:["CooldownRequired"],PortalCooldown:600s,Passengers:[{id:"minecraft:falling_block",Tags:["DummyBlock"],NoGravity:true,BlockState:{Name:"minecraft:chest"},Time:-600}]}
