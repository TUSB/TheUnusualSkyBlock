### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:shulker_bullet",NoGravity:true,Tags:[HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Turn:[{Skill:[{Interval:{Min:5,Max:5,Current:0},Call:[{Execute:"Random",Name:"Step",Direction:[0f,0f],Absolute:{Horizontal:1b,Vertical:1b},Speed:0.8d},{Name:"Step",Direction:[90f,0f],Absolute:{Horizontal:1b,Vertical:1b},Speed:0.8d},{Name:"Step",Direction:[180f,0f],Absolute:{Horizontal:1b,Vertical:1b},Speed:0.8d},{Name:"Step",Direction:[270f,0f],Absolute:{Horizontal:1b,Vertical:1b},Speed:0.8d}]}]}]}
