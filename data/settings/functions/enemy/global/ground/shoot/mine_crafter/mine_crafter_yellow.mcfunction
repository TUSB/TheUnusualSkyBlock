### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"採掘戦隊マインフラフターイエロー","color":"#FF0000","bold":true}',ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnDeath,CallOnAttack]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f],HandItems:[{id:"minecraft:bow",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:16776960}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:16776960}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16776960}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16776960}}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.25d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 120
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 80
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 20
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Death:[{Name:"Function",Tags:[Global,Event,Function,Debuffs,GivesParalysis],Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:5}}]}],Attack:[{Name:"Damage",Player:{DamageType:[Global,Fire,Blast,Projectile,Fall]},Distance:{Max:1d},AEC:{Particle:"ambient_entity_effect",Color:16776960,Radius:2f,Effects:[{Id:14b,Amplifier:5b,Duration:10}]}},{Name:"ChangeTurn",Loop:1,Condition:[{Name:"MinMP",MP:30,Percent:true,Inverse:true}]}],Turn:[{},{Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Execute:"Random",Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,MineCrafter,MineCrafterRed],Level:60}]]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,MineCrafter,MineCrafterBlue],Level:60}]]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,MineCrafter,MineCrafterYellow],Level:60}]]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,MineCrafter,MineCrafterWhite],Level:60}]]},{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,MineCrafter,MineCrafterBlack],Level:60}]]}],Once:{Max:1}},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"Kill"}],Once:{Max:1}}]}]}
