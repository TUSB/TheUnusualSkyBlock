### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:50,Tags:[DelayedData,HasAI,CallOnInit,CallOnTick,"ZedraAttack1"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraAec,2Initial]}],Tick:[{Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraAec,2Tick]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:31},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"ChangeAI",Tick:[{}]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:2d,Absolute:{Horizontal:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraAec,2Slash1]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:4,Current:4},Call:[{Settings:[{Name:"Direction",Direction:[-180f,0f],DirectionRange:[360f,0f],Speed:0d,SpeedRange:2d,Absolute:{Horizontal:true}}],Name:"Function",Tags:[Skylands,Boss,Shoot,ZedraAec,2Slash2]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],Once:1}]}]}
