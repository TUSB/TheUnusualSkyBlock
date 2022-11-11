### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:100,Max:200,Current:100},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Global:true,Direction:[60f,60f],DirectionRange:[360f,360f]}],Name:"Spawn",Count:1,CountRange:1,SpawnEntities:[[{Tags:[TocultColde,Sky,Shoot,SherbetEye,Servant],Level:25}],[{Tags:[TocultColde,Sky,Shoot,SherbetEye,ServantDirection],Level:1}]]}],Once:10}],Exit:{Loop:{Max:1,Current:1}}}]}
