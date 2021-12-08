### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Mortar,MortarExplosion],Level:1}]],Direction:[0f,0f],DirectionRange:[0f,0f],Speed:0d,Count:1,Target:{Look:"enemy",Radius:24d,IgnoreBlocks:false}},{Name:"Kill"}]},Turn:[{Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Friendly,Shoot,Mortar,MortarBulletParticle]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
