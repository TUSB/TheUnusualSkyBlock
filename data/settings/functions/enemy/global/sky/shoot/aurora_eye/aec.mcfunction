### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:area_effect_cloud",Radius:0.01f,Duration:45,Tags:[DelayedData,HasAI,CallOnInit,"StarDust"]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {Particle:"block air"}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,AecInit]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:20,Max:20,Current:5},Loop:{Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Enemy","AuroraEye","Zone"]},{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,AecAttack1]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:29,Current:29},Call:[{Name:"Function",Tags:[Global,Sky,Shoot,AuroraEye,AecAttack1]}],Once:1}]}]}
