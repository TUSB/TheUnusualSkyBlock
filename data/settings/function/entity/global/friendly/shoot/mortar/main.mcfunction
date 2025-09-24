### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",Team:"Friendly",Tags:[Mob,DelayedData,HasAI,TickingRequired,AnalyseLog,"Unmoved"],CustomName:'{"translate":"迫撃砲","color":"#FFFF00","bold":true}',Silent:true,NoAI:true,PortalCooldown:3000,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:leather_boots",components:{"minecraft:dyed_color":0},count:1},{id:"minecraft:leather_leggings",components:{"minecraft:dyed_color":0},count:1},{id:"minecraft:leather_chestplate",components:{"minecraft:dyed_color":0},count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;1541052264,-1399829841,-1639069699,162324962],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmIyYWJkNjY5MzlmNGNiNzI1N2E4OGNmNTJmYmM2ZmRjZWVjMTQzM2VjMmE2ZWYxNmQ2MmUzNGY2MjM4NzgxIn19fQ=="}]}}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sサーチ・アンド・デストロイ！","with":[{"translate":"【能力：射的・引寄無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:40,Max:40,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:24d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"}],Name:"spawn",SpawnEntities:[[{Tags:[Global,Friendly,Shoot,Mortar,MortarsBullet],Level:1}],[{Tags:[Global,Friendly,Shoot,Mortar,BulletCheck],Level:1}]],Count:1}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:64d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,TpWithRotation]}]}]}]}
