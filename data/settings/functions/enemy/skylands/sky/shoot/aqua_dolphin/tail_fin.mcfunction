### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'{"translate":"アクアドルフィン","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,"sample3"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1032}},item_display:"none",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[0.0f,-0.344f,0.72f]}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[0.0f,-0.344f,0.72f]}}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.144f,0.0f,-0.0f,0.99f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.022f,0.0f],translation:[0.0f,-0.364f,0.734f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.383f,-0.0f,-0.0f,0.924f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-0.999f,0.039f,0.0f],translation:[0.0f,-0.412f,0.745f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.377f,0.0f,-0.0f,0.926f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-0.999f,0.052f,0.0f],translation:[0.0f,-0.429f,0.752f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.017f,0.0f],translation:[0.0f,-0.49f,0.732f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.377f,0.0f,0.0f,0.926f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.009f,0.0f],translation:[0.0f,-0.493f,0.726f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.383f,0.0f,-0.0f,0.924f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[0.0f,-0.469f,0.72f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.144f,0.0f,-0.0f,0.99f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.013f,0.0f],translation:[0.0f,-0.415f,0.711f]}}}]}],Exit:{Loop:{Max:7,Current:7}}}]}
