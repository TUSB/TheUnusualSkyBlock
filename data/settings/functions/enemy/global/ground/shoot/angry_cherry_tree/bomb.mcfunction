### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Particle:"block air",Radius:0.001f,Duration:15,Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 175
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 175
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,BombParticle]}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,BombParticle]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,BombTnt],Player:{CanBeBlocked:false,Effectiveness:25},Distance:{Max:2.5d}}],Once:1}]}]}
