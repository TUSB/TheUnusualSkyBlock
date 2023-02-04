### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI,CallOnTick,CooldownRequired,Shaft_C],PortalCooldown:100,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Tick:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:12,Max:12,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,BulletCenter],Level:55}]]}],Once:3}]}]}
