### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"迫撃砲"}',Silent:1b,NoAI:1b,PortalCooldown:6000,DeathLootTable:"empty",Tags:[DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:0}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:0}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:0}},Count:1},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1541052264,-1399829841,-1639069699,162324962],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmIyYWJkNjY5MzlmNGNiNzI1N2E4OGNmNTJmYmM2ZmRjZWVjMTQzM2VjMmE2ZWYxNmQ2MmUzNGY2MjM4NzgxIn19fQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],Turn:[{Skill:[{Interval:{Min:40,Max:40,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"enemy",Radius:25d,IgnoreBlocks:true}}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Mortar,MortarsBullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Mortar,BulletDecision],Level:1}]],Direction:[0f,30f],DirectionRange:[0f,0f],Speed:0d,Count:1,Target:{Look:"enemy",Radius:24d,IgnoreBlocks:true}}]}],Exit:{Loop:{Max:1,Current:1}}},{Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"Step",Direction:[-3f,-3f],Speed:0d,Target:{Look:"enemy",Radius:60d,IgnoreBlocks:true}}]}],Exit:{Loop:{Max:1,Current:1}}}]}
