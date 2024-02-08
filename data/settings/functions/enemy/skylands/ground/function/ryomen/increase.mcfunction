### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:20,Current:20},Call:[{Name:"Function",Tags:[Skylands,Ground,Function,Ryomen,IncreaseParticle]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Skylands,Ground,Function,Ryomen,IncreaseSummon]},{Name:"Kill"}],Once:1}]}]}
#Function
playsound entity.evoker.prepare_summon hostile @a[distance=..32] ~ ~ ~ 1 1 0
