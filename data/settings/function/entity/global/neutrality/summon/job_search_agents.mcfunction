### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,"WanderingVillager"],CustomName:'{"translate":"転職エージェント","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"cleric",type:"snow"},DeathLootTableSeed:1L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",count:1,components:{"minecraft:custom_model_data":7}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.3d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/bug_memory_star",Count:1,Chance:0.01d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s襲われたら秘密兵器で返り討ちにしてやる。","with":[{"translate":"【能力：取引・反撃・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"mp",MP:99,Percent:true}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]},{Name:"function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTime]}]}
