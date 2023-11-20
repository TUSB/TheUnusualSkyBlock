### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,WaveParticle1]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,MagicSound]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:19,Current:19},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,WaveParticle1]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Boss,Shoot,SonicaAi,WaveDamage1]},{Name:"Kill"}],Once:1}]}]}
