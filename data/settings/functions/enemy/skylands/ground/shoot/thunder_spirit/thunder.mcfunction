### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:40,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Ground,Shoot,ThunderSpirit,ThunderSound]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Ground,Shoot,ThunderSpirit,Shape],Level:1}]]}],Once:1},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"%1$sは雷によって丸焦げになった。","with":[{"selector":"@s"}]}]'},Distance:{Max:2d},AEC:{Radius:0.5f,effects:[{id:"minecraft:invisibility",amplifier:5b,duration:5,show_particles:false}]}},{Name:"Function",Tags:[Skylands,Ground,Shoot,ThunderSpirit,ThunderParticle]}],Once:1}]}]}
