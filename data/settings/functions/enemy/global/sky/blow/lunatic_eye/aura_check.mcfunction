### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",PortalCooldown:100,Tags:[DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Sky,Blow,LunaticEye,AuraResidual],Level:1}]],Count:1},{Name:"Kill"}]}}
