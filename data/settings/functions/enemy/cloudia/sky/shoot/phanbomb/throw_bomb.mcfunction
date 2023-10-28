### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ファンボム","color":"#FFFFFF","bold":true}',Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnDamage,TickingRequired,HideLevel],Small:1b,Invisible:1b,Invulnerable:1b,PortalCooldown:3000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{}],DisabledSlots:4144959}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,IsDaytime]}],Name:"Kill"}],Damage:[{Element:[Fire],Name:"Damage",Player:{Damage:40d,DamageType:[Blast],DeathCause:'[{"translate":"「道ずれはヤメグワー！」%1$sは%2$sの爆風に巻き込まれ断末魔を上げ破裂した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:20,Fire:400,Hit:true},Distance:{Min:0.1d,Max:7d},Explosion:-1,AEC:{Particle:"flame",Duration:10,Radius:1f,Effects:[{Id:14,Amplifier:3b,Duration:400,ShowParticles:false}]}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:60},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",Logic:"OR",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Kill"},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:48d}},{Name:"MP",MP:10}],Name:"ChangeTurn",Loop:1}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",Logic:"OR",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Damage",Player:{Damage:40d,DamageType:[Blast],DeathCause:'[{"translate":"「道ずれはヤメグワー！」%1$sは%2$sの爆風に巻き込まれ断末魔を上げ破裂した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:20,Fire:400,Hit:true},Distance:{Min:0.1d,Max:7d},Explosion:-1,AEC:{Particle:"flame",Duration:10,Radius:1f,Effects:[{Id:14,Amplifier:3b,Duration:400,ShowParticles:false}]}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Condition:[{Name:"CheckNBT",Logic:"OR",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Kill"},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:135}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:137}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:138}}],DisabledSlots:4144959}},{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:48d}},{Name:"RandomChance",Chance:0.25d}],Name:"ChangeTurn",Loop:1}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:138}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:137}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:136}}],DisabledSlots:4144959}}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16732995]},CustomModelData:135}}],DisabledSlots:4144959}}]}]},{Index:3,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",Logic:"OR",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Damage",Player:{Damage:40d,DamageType:[Blast],DeathCause:'[{"translate":"「道ずれはヤメグワー！」%1$sは%2$sの爆風に巻き込まれ断末魔を上げ破裂した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Mob:{Physical:20,Fire:400,Hit:true},Distance:{Min:0.1d,Max:7d},Explosion:-1,AEC:{Particle:"flame",Duration:10,Radius:1f,Effects:[{Id:14,Amplifier:3b,Duration:400,ShowParticles:false}]}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Function,FireExplosion,AecHuge],Level:1}]]},{Name:"Function",Tags:[Global,Event,Function,AttackSound,Explosion]},{Condition:[{Name:"CheckNBT",Logic:"OR",NBT:{OnGround:true}},{Name:"CheckBlock",Block:[Lava]}],Name:"Kill"},{Name:"MergeNBT",NBT:{ArmorItems:[{},{},{},{}],DisabledSlots:4144959}},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:2}]]},{Name:"ChangeTurn",Set:1}]}]}]}
