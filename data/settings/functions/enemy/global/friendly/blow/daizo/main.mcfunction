### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,WanderingVillager],CustomName:'{"translate":"ダイゾー","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",VillagerData:{level:99,profession:"cartographer",type:"plains"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:observer",Count:1b}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/vanilla_item/tier1/carved_seal_items",Count:1,Chance:1d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.51d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"MinHP",Inverse:true,HP:50,Percent:true},{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"Kill"},{Name:"Spawn",Count:5,CountRange:10,SpawnEntities:[[{Tags:[Global,Friendly,Blow,Daizo,EmeraldDrop],Level:1}]]}]}
