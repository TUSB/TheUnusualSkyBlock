### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:chicken",Invulnerable:1b,Silent:1b,active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:slow_falling",amplifier:1b,duration:-1,show_particles:0b},{id:"minecraft:fire_resistance",amplifier:1b,duration:-1,show_particles:0b}],NoGravity:1b,Age:-6000,EggLayTime:6000,PortalCooldown:3000,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Sky,Shoot,WhiteParalyzer,ChickenInit]}],Tick:[{Settings:[{Name:"At",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,-90f],Speed:8d,Absolute:{Vertical:true}}],Name:"Function",Tags:[Skylands,Sky,Shoot,WhiteParalyzer,ChickenTick]}],Passenger:{Type:"up",Check:false,Call:[{Name:"Kill"}]}}
