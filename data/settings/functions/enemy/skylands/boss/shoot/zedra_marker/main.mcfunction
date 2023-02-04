### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Tags:[DelayedData,HasAI,CallOnInit,ZedraMarker],Invisible:1b,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,CopyAi]}],TurnCount:5,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:2},{Name:"ChangeAI",Tick:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,CopyTurn2]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:1},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Blind]},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeAI",Tick:[{}]}]}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Sound1]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Message1]}]},{Interval:{Min:50,Max:50,Current:50},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Message2]}]},{Interval:{Min:30,Max:30,Current:30},Loop:{Max:1,Current:1},Call:[{}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:5,Current:5},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Countdown]}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Global:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeTurn",Set:3}]}]},{Index:3,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,PTp]},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Rotate]}]}],Once:1},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,ShapeSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape1]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:14,Current:14},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape1]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,ShapeSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape2]},{Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Boss,Shoot,Zedra,Ai],Level:60}]]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:14,Current:14},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape2]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,ShapeSound]},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape3]},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,SummonTp]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:29,Current:29},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape3]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:6,Current:6},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape4]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape3]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Summon]},{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Shape3]},{Name:"ChangeAI",Tick:[{}]}],Once:1},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Summon2],Tick:5,Pose:{RightArm:[250f,330f,50f],LeftArm:[10f,0f,350f],RightArmPlus:[0b,1b,1b],LeftArmPlus:[1b,1b,0b]}}],Once:1},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Summon3],Tick:2,Pose:{RightArm:[10f,0f,40f],RightArmPlus:[1b,1b,0b]}}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,GoSign]}],Once:1},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Conect]},{Name:"ChangeTurn",Loop:1}],Once:1}]},{Index:4,Skill:[{Interval:{Min:4,Max:4,Current:4},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraMarker,Observe2]}],Name:"ChangeTurn",Loop:1}]}]},{Index:5,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:1}]}]}