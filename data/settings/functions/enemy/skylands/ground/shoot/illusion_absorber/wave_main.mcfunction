### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Teleport"},{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:3,Current:3},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonExe,RandomRotation]},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveShape]}],Once:1},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:3,Current:3},Call:[{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,WaveEffect1]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}]}]}]}
