### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item",NoGravity:1b,Age:100,PickupDelay:32767,PortalCooldown:100,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnDeath,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Item:{id:"minecraft:cobweb",Count:1b}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Direction:[0f,0f],Speed:0.3d,SpeedRange:0.2d}],Death:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:1.0d,IgnoreBlocks:true}},{Name:"Direction",Direction:[0f,0f],Speed:0.2d}],Name:"Spawn",SpawnEntities:[[{Tags:[Underworld,Ground,Blow,SpiderReinforce,SpiderwebEffect],Level:1}]]}],Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"Kill",Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:1}}]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
particle minecraft:item cobweb ~ ~ ~ 0.1 1 0.1 0.1 10 force @a[tag=ShowParticles]
playsound entity.spider.hurt master @a[distance=..20] ~ ~ ~ 1.0 2.0
playsound entity.wither.shoot master @a[distance=..20] ~ ~ ~ 1.0 2.0
