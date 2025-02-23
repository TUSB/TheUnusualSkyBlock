### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",DeathLootTable:"empty",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Target:{Look:"Player",Radius:64d,IgnoreBlocks:1b},Rotate:[-1f,-1f],Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Rotation",Target:{Look:"Player",Radius:64d},Direction:[0f,-90f]}],Name:"Function",Tags:[Desert,Ground,Shoot,FireMage,FireBallMagicSquare]}]}],Exit:{Time:10,TimeCount:10}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Desert,Ground,Shoot,FireMage,FireBall],Level:1}]]},{Name:"Kill"}]}]}]}
