### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Duration:3000,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Radius:0f}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Settings:[{Name:"Direction",Speed:1.275d,Direction:[0f,90f],Absolute:{Vertical:true}},{Name:"Facing",Target:{Look:"Player",Radius:24,IgnoreBlocks:true}}],Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:24,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Blow,Combat,Creeper]}],[{Tags:[Global,Other,Summon,Combat,CallCreeper]}]]},{Name:"Kill"}]}}
