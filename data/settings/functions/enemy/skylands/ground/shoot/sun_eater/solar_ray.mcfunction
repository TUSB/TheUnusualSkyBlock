### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnInit,CallOnAttack,CallOnBlock,CooldownRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは日向喰らいの%2$sによって貫かれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"SmartMotion",TP:true,Speed:{Set:0}},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:32d}}],Name:"Kill"}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%1$sは%2$sの自爆特攻によって206箇所を骨折しその生涯を終えた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:100,Fire:100,Hit:true},Distance:{Max:3d},Explosion:-1},{Name:"Kill"}],Block:[{Name:"Damage",Player:{DeathCause:'[{"translate":"%1$sは%2$sのタックルによって転倒し全治100年の複雑骨折を負った。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:2d},AEC:{Effects:[{Id:14b,Amplifier:6b,Duration:5,ShowParticles:false}]}},{Name:"Function",Tags:[Skylands,Ground,Shoot,SunEater,SolarRayParticleAndSound]}],TurnCount:1,Turn:[{Index:1,Once:1,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777113]},CustomModelData:134}}],DisabledSlots:4144959}},{Name:"SmartMotion",TP:true,Speed:{Set:50}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound minecraft:entity.dolphin.death hostile @a[distance=..32] ~ ~ ~ 0.7 1.0 0
particle dust 1.000 0.969 0.549 0.5 ~ ~ ~ 0.3 0.3 0.3 0.5 20 normal
