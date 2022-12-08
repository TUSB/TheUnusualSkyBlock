### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:marker",PortalCooldown:70,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnInit,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Spawn",IsChild:true,SpawnEntities:[[{Tags:[Global,Ground,Shoot,CrimzonWizard,Bullet],Level:55}]]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:1,Max:1,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Shoot,CrimzonWizard,BulletRotation]}]}]}]}
