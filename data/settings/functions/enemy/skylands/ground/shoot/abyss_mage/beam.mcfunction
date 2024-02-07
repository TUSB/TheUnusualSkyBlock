### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:100,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:64d,IgnoreBlocks:true},Anchor:"Eyes"}],Name:"Function",Tags:[Global,Event,Function,CommonExe,TpWithXRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Enemy","AbyssMage","Magic"]}],Once:1},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,AbyssMage,BeamAttack1]},{Name:"Kill"}],Once:1}]}]}
