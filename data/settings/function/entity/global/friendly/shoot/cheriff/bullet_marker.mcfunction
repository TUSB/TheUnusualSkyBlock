### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"damage",Mob:{Physical:50,Dark:400,Hit:true},Distance:{Min:0d,Max:3.5d}},{Name:"function",Tags:[Global,Friendly,Shoot,Cheriff,ParticleAndSound4]},{Name:"kill"}]}}
