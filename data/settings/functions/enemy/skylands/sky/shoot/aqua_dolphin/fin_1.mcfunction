### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",CustomName:'{"translate":"アクアドルフィン","color":"#FF0000","bold":true}',Tags:[DelayedData,HasAI,"sample2"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1031}},item_display:"none",transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[-0.28f,-0.375f,-0.591f]}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[-0.28f,-0.375f,-0.591f]}}}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.257f,-0.0f,0.966f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.022f,0.0f],translation:[-0.28f,-0.453f,-0.574f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.301f,-0.0f,0.954f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-0.999f,0.039f,0.0f],translation:[-0.28f,-0.545f,-0.56f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.287f,-0.0f,0.958f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-0.999f,0.052f,0.0f],translation:[-0.28f,-0.596f,-0.549f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.243f,-0.0f,0.97f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.017f,0.0f],translation:[-0.28f,-0.567f,-0.578f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.166f,-0.0f,0.986f],scale:[1.0f,1.0f,1.0f],left_rotation:[0.0f,-1.0f,0.009f,0.0f],translation:[-0.28f,-0.547f,-0.584f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[-0.0f,-0.065f,-0.0f,0.998f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.0f,0.0f],translation:[-0.28f,-0.5f,-0.591f]}}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],left_rotation:[-0.0f,-1.0f,-0.013f,0.0f],translation:[-0.28f,-0.412f,-0.601f]}}}]}],Exit:{Loop:{Max:7,Current:7}}}]}
