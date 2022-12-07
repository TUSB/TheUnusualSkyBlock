### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"ボルノクエイク","color":"#FF0000","bold":true}',Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:200,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 120
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Teleport"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,Condition]}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,QuakeStart]},{Name:"MergeNBT",NBT:{Marker:1b}}]},{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Name:"Damage",Player:{DamageType:[Blast],Effectiveness:100,DeathCause:'[{"translate":"%1$sは%2$sの爆発が直撃した。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Max:1d}},{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,QuakeBlust]},{Condition:[{Name:"RandomChance",Chance:0.3d}],Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,QuakeDebuff]},{Name:"Kill"}]}]}]}
