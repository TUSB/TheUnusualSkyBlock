### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Tags:[HasAI,CooldownRequired,CallOnTime],CustomName:'{"translate":"追尾爆裂弾"}',NoGravity:true,PortalCooldown:240}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Turn:[{Target:{Look:"player",Radius:8d},Move:{Front:0.25d},Rotate:[15f,0f]}]}
