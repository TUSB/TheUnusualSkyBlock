### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",PortalCooldown:400,Tags:[DelayedData,HasAI,CallOnInit,"GinSpiritBat","TickingRequired","NativeTask","Skill"],Invulnerable:true,Team:LightPurple,DeathTime:19s,attributes:[{id:"max_health",modifiers:[{amount:0.1d,id:"tusb:max_health_0"},{amount:3.6d,id:"tusb:max_health_1"},{amount:1d,id:"tusb:max_health_2"}]}],active_effects:[{id:"minecraft:invisibility",amplifier:127,duration:-1,show_particles:0b},{id:"minecraft:glowing",amplifier:127,duration:-1,show_particles:0b}],DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Friendly,Bullet,GinSpirit,Init]}],TurnCount:1,Turn:[{Index:1,Target:{Look:"Player",Radius:16d},Move:{Front:0.2d,Side:0d,Up:0.2d},Rotate:[-1f,-1f]}]}
