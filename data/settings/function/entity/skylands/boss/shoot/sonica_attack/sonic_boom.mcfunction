### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",count:1,components:{"minecraft:custom_model_data":1034,"minecraft:firework_explosion":{shape:"small_ball",colors:[I;3932120]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomInit]}],Tick:[{Name:"function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomTick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{start_interpolation:-1,interpolation_duration:26,transformation:{right_rotation:{axis:[0,1,0],angle:2.1},scale:[4f,4f,4f]}}}],Once:1},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Name:"merge_nbt",NBT:{start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:{axis:[0,1,0],angle:5},scale:[4f,0f,4f]}}},{Name:"change_ai",Tick:[]},{Name:"function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomAttack]}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"kill"}],Once:1}]}]}
