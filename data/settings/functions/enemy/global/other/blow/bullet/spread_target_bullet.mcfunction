### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Tags:[HasAI,CallOnInit],NoGravity:true}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-15f,-15f],DirectionRange:[30f,30f],Speed:0.5d,Target:{Look:"player",Radius:24d,Block:true}}]}
