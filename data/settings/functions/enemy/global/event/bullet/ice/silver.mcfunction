### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:snowball",Item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:33,Explosion:{Type:0,Colors:[I;16777215]}}},NoGravity:true,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-7f,-12f],DirectionRange:[14f,9f],Speed:0.3d,Target:{Look:"player",Radius:64d,IgnoreBlocks:true}}]}
