### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog,"WanderingVillager"],CustomName:'{"translate":"ホーリー・ホリホリック","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"librarian",type:"snow"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",count:1}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.28d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s安心して下さい、良心価格で取引しますよ。","with":[{"translate":"【能力：逃走・取引】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"min_hp",Inverse:true,HP:50,Percent:true},{Name:"has_target",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"kill"}]}
