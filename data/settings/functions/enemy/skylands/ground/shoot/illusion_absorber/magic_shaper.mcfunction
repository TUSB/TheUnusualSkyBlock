### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",PortalCooldown:20,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:5,Current:5},Call:[{Name:"Damage",Player:{Effectiveness:40},MP:{MP:10},Distance:{Max:5d}},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicShape]},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicEffect]}],Once:5}]}]}
