### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ナイトメアメテオの爆発","color":"#FFFFFF"}',NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PortalCooldown:400,Tags:[DelayedData,HasAI,CallOnInit,CallOnTimeOut,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Damage",Player:{DamageType:[Global,Blast],DeathCause:'[{"translate":"%1$sは%2$sに巻き込まれた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName"}]}]'},Distance:{Min:0.1d,Max:2.5d},Explosion:2.5},{Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[End,Boss,Blow,NightmareEye,AuraResidual],Level:1}]]},{Name:"Kill"}],Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
particle dust 0 0 0.4 5 ~ ~ ~ 2.5 2.5 2.5 100 50 force @a[distance=..64,tag=ShowParticles]
particle soul_fire_flame ~ ~ ~ 2.5 2.5 2.5 0 20 force @a[distance=..64,tag=ShowParticles]
particle minecraft:dust 100000 100000 100000 1 ~ ~ ~ 2.5 2.5 2.5 0 30 force @a[distance=..64,tag=ShowParticles]
