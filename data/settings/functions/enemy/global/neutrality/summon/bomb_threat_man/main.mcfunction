### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"爆弾魔","color":"#0000FF","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:24b},sell:{id:"minecraft:tnt",Count:1b},maxUses:8},{buy:{id:"minecraft:emerald",Count:6b},sell:{id:"minecraft:gunpowder",Count:1b},maxUses:16},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:17,Wearable:true,display:{Name:'{"translate":"遊びは終わりだ","color":"#FF0000","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(IV)","color":"white","with":[{"translate":"炎威の"},{"translate":"刻印"}]}]','{"translate":"特殊装備枠。","color":"#CCCCCC","italic":false}','{"translate":"右クリックで頭に装備可能。","color":"#CCCCCC","italic":false}','{"translate":"爆弾魔ごっこが捗るアイマスク。","color":"#CBCBCB","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" サモンS：ボム"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Engraving:{EnchantID:"炎威",Tier:4},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"サモンSボム",Level:1,Interval:0,Trigger:"スニークする",Count:64},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:-0.1d,Operation:2,UUID:[I;21,0,0,12],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:1d,Operation:1,UUID:[I;21,0,0,21],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.15d,Operation:1,UUID:[I;21,0,0,31],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:32d,Operation:0,UUID:[I;21,0,0,40],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:0.2d,Operation:1,UUID:[I;21,0,0,51],Slot:"head"}]},Count:1b},maxUses:3},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:4b},sell:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:6,Wearable:true,display:{Name:'{"translate":"サングラス","color":"#AC43FF","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(III)","color":"white","with":[{"translate":"謎の"},{"translate":"刻印"}]}]','{"translate":"特殊装備枠。","color":"#CCCCCC","italic":false}','{"translate":"右クリックで頭に装備可能。","color":"#CCCCCC","italic":false}','{"translate":"とっても危険なパーティーグッズ。","color":"#FF0000","italic":false}','{"translate":"自滅に注意。","color":"#FF0000","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" サモンS：ジェノサイドボム"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Engraving:{EnchantID:"謎",Tier:3},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"サモンSジェノサイドボム",Level:1,Interval:600,Trigger:"スニークする",Count:16},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:-0.35d,Operation:2,UUID:[I;21,0,0,12],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:0.14d,Operation:1,UUID:[I;21,0,0,21],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.14d,Operation:1,UUID:[I;21,0,0,31],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:7d,Operation:0,UUID:[I;21,0,0,40],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:0.07d,Operation:1,UUID:[I;21,0,0,51],Slot:"head"},{AttributeName:"generic.armor",Name:"カスタム",Amount:0.07d,Operation:1,UUID:[I;21,0,0,61],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"カスタム",Amount:0.07d,Operation:1,UUID:[I;21,0,0,71],Slot:"head"}]},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"librarian",type:"snow"},DeathLootTableSeed:6L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:17}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 24d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value -25
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 50
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:tnt"},Count:1,CountRange:4,Chance:1d},{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s([∩∩])<死にたいらしいな。","with":[{"translate":"【能力：逃走・移動・取引・コール・火だるま・範囲攻撃】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:8}}],Name:"Step",Direction:[180f,-5f],Speed:2.5d,SpeedRange:1.4d,Absolute:{Vertical:true}},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:80d}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTimeToZero]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:120,Current:60},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:80d}},{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"ChangeTurn",Random:true}]}]},{Index:2,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:4,Current:4},Call:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,0f]},{Name:"Direction",Speed:1d}],Name:"Spawn",NonParentLevel:true,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBomb,Main],Level:1}]]}],MP:5},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]},{Index:3,Skill:[{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"All",Radius:48d,IgnoreBlocks:true}},{Name:"Rotation",Direction:[-20f,0f],DirectionRange:[40f,0f]},{Name:"Direction",Speed:1d}],Name:"Spawn",NonParentLevel:true,SpawnEntities:[[{Tags:[Global,Event,Bullet,CommonBombHuge,Main],Level:1}]]}],MP:15},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"ChangeTurn",Set:1}]}]}]}
