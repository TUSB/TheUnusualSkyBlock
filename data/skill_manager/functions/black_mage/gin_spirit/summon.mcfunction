##############################
### ジン・スピリット コウモリ召喚
##############################

#それぞれLv1,2,3以上に適用
execute if score @s SkillAttribute matches 100000.. run summon minecraft:bat ~ ~ ~ {PortalCooldown:400,Tags:[GinSpiritBat,TickingRequired,NativeTask,TowardPlayer,Swim,InAir,Step,Front,Initialized],Invulnerable:true,Team:Light_Purple,DeathTime:19s,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.07d,UUIDLeast:0l},{Amount:3.6d,UUIDLeast:1l},{Amount:1d,UUIDLeast:2}]}],ActiveEffects:[{Id:14,Amplifier:127,Duration:20000000,ShowParticles:0b},{Id:24,Amplifier:127,Duration:20000000,ShowParticles:0b}]}
execute unless entity @s[tag=GinSpiritLv1] if score @s SkillAttribute matches 500000.. run summon minecraft:bat ~ ~ ~ {PortalCooldown:400,Tags:[GinSpiritBat,TickingRequired,TowardPlayer,Swim,InAir,Step,Front,Initialized],Invulnerable:true,Team:Light_Purple,DeathTime:19s,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.07d,UUIDLeast:0l},{Amount:3.6d,UUIDLeast:1l},{Amount:1d,UUIDLeast:2}]}],ActiveEffects:[{Id:14,Amplifier:127,Duration:20000000,ShowParticles:0b},{Id:24,Amplifier:127,Duration:20000000,ShowParticles:0b}]}
execute if entity @s[tag=GinSpiritLv3] if score @s SkillAttribute matches 1000000.. run summon minecraft:bat ~ ~ ~ {PortalCooldown:400,Tags:[GinSpiritBat,TickingRequired,TowardPlayer,Swim,InAir,Step,Front,Initialized],Invulnerable:true,Team:Light_Purple,DeathTime:19s,Attributes:[{Name:"generic.maxHealth",Modifiers:[{Amount:0.07d,UUIDLeast:0l},{Amount:3.6d,UUIDLeast:1l},{Amount:1d,UUIDLeast:2}]}],ActiveEffects:[{Id:14,Amplifier:127,Duration:20000000,ShowParticles:0b},{Id:24,Amplifier:127,Duration:20000000,ShowParticles:0b}]}

execute if score @s SkillAttribute matches 100000.. run scoreboard players operation @s SkillAttribute /= $50 Const

###---演出---Start
execute facing entity @e[tag=Mob,limit=1,sort=nearest,distance=..8] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
playsound minecraft:entity.guardian.death master @a[distance=..16] ~ ~ ~ 1 2
playsound minecraft:entity.bat.takeoff master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:dust 1 0 0.5 1.5 ~ ~3 ~ 0.3 2 0.3 1 30 force @a[tag=ShowParticles]
###---演出---End
