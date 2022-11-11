### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,WanderingVillager],CustomName:'{"translate":"商業ゴブリン・ミクスクッカ","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"butcher",type:"jungle"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1,0,48,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMWRhYzExMzlhZjJmMDU3YjM5MzZhN2VhZjdjNTA2ZjcwNGJkNWQyNTgwODYzZjkxYjMwNzBkZGE5MjlhYWUwMSJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/mix_food_bug_memory_star",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Name:"ChangeTurn",Set:2},{Condition:[{Name:"MinHP",Inverse:true,HP:50,Percent:true},{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"Kill"}],TurnCount:2,Turn:[{Index:1,Skill:[{Interval:{Min:10000,Max:10000,Current:10000},Call:[{}]}]},{Index:2,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:20,Current:20},Call:[{Settings:[{Name:"Facing",Global:true,Target:{Look:"All",Radius:48d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"}]},{Settings:[{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-4f,-4f],DirectionRange:[8f,8f]}],Name:"Spawn",Count:1,CountRange:3,SpawnEntities:[[{Tags:[Global,Neutrality,Shoot,GoblinMerchantMixcooker,BananaDanceWildly],Level:1}]]},{Name:"Function",Tags:[Skylands,Sky,Shoot,HellsChicken,ParticleAndSound]}]}],Exit:{Loop:{Max:1,Current:1}}}]}
