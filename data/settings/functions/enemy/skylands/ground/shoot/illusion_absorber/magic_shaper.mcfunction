### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,Marker:1b,NoGravity:1b,PortalCooldown:20,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,TickingRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:10,Current:10},Call:[{Name:"Damage",Player:{Effectiveness:20},MP:{MP:10},Distance:{Max:5d}},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicShape]},{Name:"Function",Tags:[Skylands,Ground,Shoot,IllusionAbsorber,MagicEffect]}],Once:10}]}]}
