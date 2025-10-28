### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,-1f,0f,0f],translation:[0f,0.1125f,0f],scale:[0.6f,0.6f,0.6f]},Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":1034,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;10747842]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{start_interpolation:-1,interpolation_duration:21,transformation:{right_rotation:{axis:[0,1,0],angle:5.24}}}},{Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{start_interpolation:-1,interpolation_duration:21,transformation:{right_rotation:{axis:[0,1,0],angle:1.05}}}},{Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{start_interpolation:-1,interpolation_duration:21,transformation:{right_rotation:{axis:[0,1,0],angle:3.14}}}},{Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}]}]}]}
