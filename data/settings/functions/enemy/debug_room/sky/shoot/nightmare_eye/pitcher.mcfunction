### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"ナイトメア・ピッチャー","color":"#FFFFFF"}',Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Friendly",Radius:45d,IgnoreBlocks:true}}],Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,Straight],Level:1}],[{Tags:[DebugRoom,Sky,Shoot,NightmareEye,StraightCheck],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
