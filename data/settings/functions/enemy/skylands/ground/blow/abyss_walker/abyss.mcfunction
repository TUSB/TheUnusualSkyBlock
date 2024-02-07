### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",CustomName:'{"translate":"アビス","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:25,Current:25},Call:[{Name:"Function",Tags:[Skylands,Ground,Blow,AbyssWalker,AbyssAttack1]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:1}]}]}
