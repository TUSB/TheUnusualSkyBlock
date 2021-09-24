### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",Tags:[HasAI],CustomName:'{"translate":"HPのないテスト弾"}',NoGravity:true}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Target:{Look:"player",Radius:32d,Block:false},Move:{Front:0d,Side:0d,Rotate:{Horizontal:-1d,Vertical:-1d}},Exit:{Time:2}},{Skill:[{Call:[{Name:"Step",Direction:[0f,0f],Speed:2.0d}],Once:{Max:1}}]}]}
