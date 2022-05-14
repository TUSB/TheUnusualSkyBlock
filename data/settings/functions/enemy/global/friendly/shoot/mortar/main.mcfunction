### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Team:"Friendly",CustomName:'{"translate":"迫撃砲"}',Silent:1b,NoAI:1b,Team:"Friendly",PortalCooldown:6000,DeathLootTable:"empty",Tags:[Mob,DelayedData,HasAI,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",tag:{display:{color:0}},Count:1},{id:"minecraft:leather_leggings",tag:{display:{color:0}},Count:1},{id:"minecraft:leather_chestplate",tag:{display:{color:0}},Count:1},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1541052264,-1399829841,-1639069699,162324962],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmIyYWJkNjY5MzlmNGNiNzI1N2E4OGNmNTJmYmM2ZmRjZWVjMTQzM2VjMmE2ZWYxNmQ2MmUzNGY2MjM4NzgxIn19fQ=="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Name:"Kill"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Mortar,MortarsBullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Mortar,BulletCheck],Level:1}]],Count:1}]}],Exit:{Loop:{Max:1,Current:1}}},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"Step",Speed:0d}]}],Exit:{Loop:{Max:1,Current:1}}}]}
