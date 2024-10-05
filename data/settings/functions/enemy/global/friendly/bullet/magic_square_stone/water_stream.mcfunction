### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PortalCooldown:20,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Bullet,MagicCircle,Blue],Level:1}]]},{Name:"DelayAction",Tags:["Casting","PillarOfWater"]}],Tick:[{Name:"Damage",Mob:{Hit:true,Ice:35},Distance:{Min:0.1d,Max:6.5d}}]}
