### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[HasAI],NoGravity:true,Silent:true,Invulnerable:true}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,ManaBlast1B],Level:1}]]},{Name:"Kill"}]}}
