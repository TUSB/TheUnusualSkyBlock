### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"Kill"},{Name:"Damage",Explosion:3},{Name:"Spawn",Count:1,CountRange:1,SpawnEntities:[[{Tags:[Desert,Ground,Shoot,FireMage,FlameRainSmall],Level:1}],[{Tags:[Desert,Ground,Shoot,FireMage,FlameRainSmallDirection],Level:1}]]}]}}
