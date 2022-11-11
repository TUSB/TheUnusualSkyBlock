### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",PortalCooldown:100,Tags:[DelayedData,HasAI,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Shoot,CrimsonEye,AuraResidual],Level:1}]],Count:1},{Name:"Function",Tags:[Global,Event,Function,FireExplosion,Particle]},{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:30d,IgnoreBlocks:true}}],Name:"Kill"}]}],Exit:{Loop:{Max:1,Current:1}}}]}
