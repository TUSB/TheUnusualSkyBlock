### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:bat",PortalCooldown:400,Tags:[DelayedData,HasAI,CallOnInit,"GinSpiritBat","TickingRequired","NativeTask","Skill"],Invulnerable:true,Team:LightPurple,DeathTime:19s,Attributes:[{Name:"generic.max_health",Modifiers:[{Amount:0.1d,UUID:[I;0,0,0,0]},{Amount:3.6d,UUID:[I;0,0,0,1]},{Amount:1d,UUID:[I;0,0,0,2]}]}],active_effects:[{id:"minecraft:invisibility",amplifier:127,duration:-1,show_particles:0b},{id:"minecraft:glowing",amplifier:127,duration:-1,show_particles:0b}],DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Friendly,Bullet,GinSpirit,Init]}],TurnCount:1,Turn:[{Index:1,Target:{Look:"Player",Radius:16d},Move:{Front:0.2d,Side:0d,Up:0.2d},Rotate:[-1f,-1f]}]}
