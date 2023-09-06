### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"キャロット・キャロットスキー","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:carrot",Count:1b},sell:{id:"minecraft:emerald",Count:2b},maxUses:10},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:carrot",Count:1b},maxUses:5},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:1,display:{Name:'{"translate":"スティックキャロット","color":"gold","bold":true,"italic":false}',Lore:['{"translate":"素材の味を活かした杖","color":"white","italic":false}','{"translate":"控えめに言って歯が折れる硬度の為","color":"white","italic":false}','{"translate":"食用ではないのは明らかである","color":"white","italic":false}']},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.05d,Operation:1,UUID:[I;11,0,0,31],Slot:"mainhand"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:21d,Operation:0,UUID:[I;11,0,0,40],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"デフォルト",Amount:1.2,Operation:0,UUID:[I;11,0,1,50],Slot:"mainhand"}]},Count:1b},maxUses:3},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"cartographer",type:"plains"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:4}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:carrot"},Count:1,CountRange:1,Chance:1d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.31d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"人参、人参、ニンジン...。"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"MinHP",Inverse:true,HP:50,Percent:true},{Name:"HasTarget",Target:{Look:"Enemy",Radius:4d,IgnoreBlocks:true}}],Name:"Kill"}]}