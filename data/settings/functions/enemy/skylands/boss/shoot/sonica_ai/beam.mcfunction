### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Settings:[{Name:"At",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,SonicaAi,BeamMarker],Level:150}]]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,BeamParticle]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:20},Loop:{Max:41,Current:41},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,BeamDamage1]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
#Function
playsound entity.illusioner.prepare_mirror hostile @a[distance=..32] ~ ~ ~ 2 2 1
playsound entity.illusioner.prepare_mirror hostile @a[distance=..32] ~ ~ ~ 1.99 2 1
playsound entity.illusioner.prepare_mirror hostile @a[distance=..32] ~ ~ ~ 1.98 2 1
playsound entity.warden.sonic_charge hostile @a[distance=..32] ~ ~ ~ 1 1.25 1
