### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,WanderingVillager],CustomName:'{"translate":"歴戦の行商人・エモン","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"nitwit",type:"jungle"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"diamond_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"歴戦の行商人・エモン",Id:[I;1,0,64,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGYzZjdhZmNiMzIwMGI2ZDRiZjUwYmVkODA4ZDFlNjc3MDZjODE4NWM2NjkyMWU0OTYyZTI0NTQ4ODM1ZmVjOCJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Neutrality,Blow,Emon,Betrayal],Level:60}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Kill"},{Settings:[{Name:"At",Target:{Look:"All",Radius:16}},{Name:"Direction",Direction:[-180f,0f],Speed:5d}],Name:"Teleport"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:60},Call:[{Condition:[{Name:"MP",MP:10}],Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:16}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d}]}]}],ProjectileDamage:{Physical:50,Light:50,Dark:50}}
