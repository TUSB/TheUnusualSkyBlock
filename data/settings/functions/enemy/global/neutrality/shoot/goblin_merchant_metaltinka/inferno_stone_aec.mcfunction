### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",CustomName:'{"translate":"炎獄滅石 -集- AEC","color":"#00FFC2"}',Particle:"block air",Duration:200,Radius:0.001f,PortalCooldown:65,Tags:[DelayedData,HasAI,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",Count:20,SpawnEntities:[[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMetaltinka,InfernoStoneBurst],Level:1}]]},{Name:"Kill"}]}}
#Function
playsound minecraft:block.beacon.activate hostile @a[distance=..32] ~ ~ ~ 0.7 2.0 0
