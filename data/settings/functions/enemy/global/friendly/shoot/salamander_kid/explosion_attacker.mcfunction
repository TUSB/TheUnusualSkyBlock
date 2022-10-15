### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:2,Current:2},Call:[{Name:"Damage",Mob:{Fire:100},Distance:{Min:0.1d,Max:3d},Explosion:2},{Name:"Function",Tags:[Global,Friendly,Shoot,SalamanderKid,ExplosionSystem]}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:2,Current:2},Call:[{Name:"Kill"}]}]}]}
