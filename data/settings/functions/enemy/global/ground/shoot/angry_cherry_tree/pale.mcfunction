### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",Tags:[DelayedData,HasAI]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,MagicParticle]},{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,MagicSound]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:14,Current:14},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,MagicParticle]}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,AngryCherryTree,Damage1]},{Name:"Kill"}],Once:1}]}]}
