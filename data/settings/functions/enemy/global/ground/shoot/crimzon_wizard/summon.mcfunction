### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,PortalCooldown:80,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 0
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:30},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"Function",Inverse:true,Tags:[Global,Ground,Shoot,CrimzonWizard,Condition]}],Name:"Kill"}],Once:1},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,Shape1Sound]},{Name:"MergeNBT",NBT:{Marker:1b}}],Once:1},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:24,Current:24},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,ShapeRotation]},{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,Shape1]}],Once:24},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,SummonSound]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Bullet,FireCrow,Main],Level:55}],[{Tags:[Global,Ground,Bullet,FireCrow,System],Level:55}]]},{Name:"Kill"}],Once:1}]}]}
