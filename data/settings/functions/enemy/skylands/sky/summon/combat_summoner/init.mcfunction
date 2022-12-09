### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:16d,Absolute:{Vertical:true}}],Condition:[{Name:"CheckBlock",Block:[Air]}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Sky,Summon,GhastCarrier,Main],Level:30}],[{Tags:[Skylands,Sky,Summon,CombatSummoner,Main],Level:15}]]},{Name:"Kill"}]}
