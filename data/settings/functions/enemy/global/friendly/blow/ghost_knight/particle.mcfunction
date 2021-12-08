### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"soul_fire_flame",Radius:0.1f,Duration:2147483647,Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"}]},Turn:[{Skill:[{Interval:{Min:1000,Max:1000,Current:1000},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Friendly,Blow,GhostKnight,ManifestationTimeLimit]}]}]}]}
