### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,0f,2.5f]},Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1033,Explosion:{Type:0,Colors:[I;12517376]}}}}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:7,transformation:{right_rotation:{axis:[0,1,0],angle:1.05},scale:[2.5f,2.5f,2.5f]}}}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:7,transformation:{right_rotation:{axis:[0,1,0],angle:2.1}}}}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:7,transformation:{right_rotation:{axis:[0,1,0],angle:3.15}}}}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:7,transformation:{right_rotation:{axis:[0,1,0],angle:4.2}}}}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:7,transformation:{right_rotation:{axis:[0,1,0],angle:5.25},scale:[4f,0f,4f]}}}],Once:1},{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}