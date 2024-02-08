### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:60,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Target:{Look:"Self"},Direction:[-720f,-90f],DirectionRange:[360f,15f],Speed:1d}],Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:64d}}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Sky,Shoot,LostSoulRed,Bullet],Level:1}],[{Tags:[Global,Sky,Shoot,LostSoulRed,BulletCheck],Level:1}]]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
