### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Call:[{Name:"Function",Tags:[Desert,Ground,Shoot,IceMage,Ready]}]},{Interval:{Min:600,Max:1200,Current:200},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"Direction",Global:true,Direction:[60f,60f],DirectionRange:[360f,360f]}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[TocultColde,Ground,Shoot,IceMage,LaserTurret],Level:1}]]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}],Exit:{Loop:{Max:1,Current:1}}}]}
