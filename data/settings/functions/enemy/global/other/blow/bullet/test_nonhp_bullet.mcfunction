### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Tags:[HasAI],CustomName:'{"translate":"HPのないテスト弾"}',NoGravity:true}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"player",Radius:32d,Block:false},Move:{Front:0d,Side:0d},Rotate:[-1f,-1f],Exit:{Time:1}},{Skill:[{Call:[{Name:"Step",Direction:[0f],Speed:0.1d}],Once:{Max:1}}]}]}
