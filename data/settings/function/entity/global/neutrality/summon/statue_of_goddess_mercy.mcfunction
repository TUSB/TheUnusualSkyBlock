### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnTick,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,"WanderingVillager"],CustomName:'{"translate":"慈愛の女神像","color":"#00FF00","bold":true}',Silent:true,active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:3000,DeathLootTable:"empty",#N/A,VillagerData:{level:99,profession:"cleric",type:"snow"},DeathLootTableSeed:1L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",count:1,components:{"minecraft:custom_model_data":1023}}],ArmorDropChances:[-Infinityf,-Infinityf,-Infinityf,-Infinityf]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."理外攻撃力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:item/carrot_on_a_stick/weapon/statue_of_goddess_mercy",Count:1,Chance:0.01d},{Item:{id:"minecraft:gold_block"},Count:4,CountRange:8,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sそんな餌に私が釣られるか～","with":[{"translate":"【能力：取引・反撃・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"function",Tags:[Global,Event,Function,CommonParticle,Flash]}],Time:[{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Name:"function",Tags:[Global,Event,Function,DamageSound,Light]},{Condition:[{Name:"has_target",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"mp",MP:99,Percent:true}],Name:"spawn",Count:1,SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]},{Name:"function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTime]}],Tick:[{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"function",Tags:[Global,Event,Function,CommonParticle,DiscreetFlash]}]}
