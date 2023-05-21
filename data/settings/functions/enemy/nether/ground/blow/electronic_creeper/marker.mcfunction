### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 75
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 75
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Passenger:{Type:"down",Check:false,Call:[{Name:"ChangeTurn",Set:2},{Name:"ChangeAI",Passenger:{Call:[]}}]},TurnCount:2,Turn:[{Index:1},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:10,Current:10},Call:[{Name:"Function",Tags:[Global,Event,Function,Lightningbolt],Settings:[{Name:"Direction",Speed:3d,Direction:[0f,0f],DirectionRange:[360f,0f],Global:true}]},{Name:"Damage",Player:{BypassArmor:1b,BypassResistance:1b,EPF:0},Distance:{Max:3d}}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
