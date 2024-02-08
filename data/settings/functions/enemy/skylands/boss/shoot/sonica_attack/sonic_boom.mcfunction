### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:item_display",Silent:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},Tags:[DelayedData,HasAI,CallOnInit,CallOnTick]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {item:{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:1034,Explosion:{Type:0,Colors:[I;3932120]}}}}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomInit]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomTick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:26,transformation:{right_rotation:{axis:[0,1,0],angle:2.1},scale:[4f,4f,4f]}}}],Once:1},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{start_interpolation:-1,interpolation_duration:6,transformation:{right_rotation:{axis:[0,1,0],angle:5},scale:[4f,0f,4f]}}},{Name:"ChangeAI",Tick:[]},{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAttack,SonicBoomAttack]}],Once:1},{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:1}]}]}
