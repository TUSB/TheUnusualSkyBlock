### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:2f,Duration:2147483647,PortalCooldown:200,Tags:[DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"sneeze"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"player",Radius:2d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.75d}],Name:"Function",Tags:[Global,Sky,Blow,PoisonEye,PoisonEffect]},{Name:"Kill"}]}]}]}
