### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Function",Tags:[TocultColde,Sky,Blow,SherbetEye,BulletImpact]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[TocultColde,Sky,Blow,SherbetEye,BulletEffect],Level:1}]]},{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[TocultColde,Sky,Blow,SherbetEyeTest,BulletAppearance]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
