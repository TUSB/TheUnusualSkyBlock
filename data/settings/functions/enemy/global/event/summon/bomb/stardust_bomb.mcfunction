### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Tags:[HasAI,CallOnInit],CustomName:'{"translate":"スターダストボム","color":"#FFFFFF"}',NoGravity:true,PortalCooldown:100}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:0.25d,Target:{Look:"player",Radius:24d,IgnoreBlocks:true}}]}
