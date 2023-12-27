### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnTick,TickingRequired,DamageProjectile,FriendlyProjectile,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"歴戦の行商人・エモン","color":"#0000FF","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:beef",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:chicken",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:mutton",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:porkchop",Count:1b},maxUses:6},{buy:{id:"minecraft:emerald",Count:2b},sell:{id:"minecraft:rabbit",Count:1b},maxUses:6},{buy:{id:"minecraft:golden_apple",tag:{CustomModelData:16,display:{Name:'{"translate":"ハナの果実","color":"#FF9900","bold":true,"italic":false}',Lore:['{"translate":"罪悪無き者が好んで食すとされる果実。","color":"#FF0053","italic":false}']}},Count:1b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:2b},maxUses:1},{buy:{id:"minecraft:barrier",tag:{display:{Name:'{"translate":"おっと、こいつぁ売り物じゃねーんだ。","color":"#FF0000","bold":true,"italic":false}'}},Count:1b},sell:{id:"minecraft:diamond_sword",tag:{CustomModelData:1,Damage:1529,display:{Name:'{"translate":"エンド・オブ・エンド","color":"dark_purple","bold":true,"italic":false}',Lore:['[{"text":"❖ ","color":"","italic":false},{"translate":"%1$s%2$s(VI)","color":"white","with":[{"translate":"刃の"},{"translate":"刻印"}]}]']},Engraving:{EnchantID:"刃",Tier:6},AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:189d,Operation:0,UUID:[I;11,0,0,40],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:-2.4d,Operation:0,UUID:[I;11,0,0,50],Slot:"mainhand"}]},Count:1b},maxUses:1},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"nitwit",type:"jungle"}}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"diamond_sword",Count:1b,tag:{CustomModelData:1}},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"歴戦の行商人・エモン",Id:[I;1,0,64,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGYzZjdhZmNiMzIwMGI2ZDRiZjUwYmVkODA4ZDFlNjc3MDZjODE4NWM2NjkyMWU0OTYyZTI0NTQ4ODM1ZmVjOCJ9fX0="}]}}}}],HandDropChances:[-1E40f,-1E40f],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 6d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 20
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sほぉ～これはこれは、「良い肉」を持っているな。","with":[{"translate":"【能力：取引・ワープ・格闘・移動・反撃・範囲攻撃・幻影・置換】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Blink",Count:3,Chance:1d}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Spawn",SpawnEntities:[[{Tags:[Skylands,Neutrality,Blow,Emon,Betrayal],Level:60}]]},{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:8d,IgnoreBlocks:true}},{Name:"MinHP",Inverse:true,HP:50,Percent:true}],Name:"Kill"},{Settings:[{Name:"At",Target:{Look:"All",Radius:16}},{Name:"Direction",Direction:[-180f,0f],Speed:5d}],Name:"Teleport"},{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"ChangeTurn",Set:2}],Tick:[{}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:60,Max:100,Current:60},Call:[{Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:16}}],Name:"Step",Direction:[0f,-3f],Speed:3.0d},{Name:"MergeNBT",NBT:{HandItems:[{id:"diamond_sword",Count:1b,tag:{CustomModelData:1}},{}]}}],MP:5}]},{Index:2,Skill:[{Interval:{Min:1,Max:1,Current:1},Call:[{Name:"DelayAction",Tags:["Casting","FinishingMove"]},{Name:"Message",Message:'{"translate":"【歴戦の行商人・エモン】奥義...空 翔 虚 閃 ！！","color":"#FF0000"}'}]},{Interval:{Min:80,Max:80,Current:80},Call:[{}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Skill:[{Interval:{Min:5,Max:10,Current:5},Loop:{Max:2,Current:2,Range:4},Call:[{Name:"Function",Tags:[Global,Event,Function,CommonParticle,Flash]},{Settings:[{Name:"At",Target:{Look:"All",Radius:12,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-35f],DirectionRange:[360f,-35f],Speed:3d,SpeedRange:2d,Absolute:{Vertical:true}}],Name:"Teleport"},{Name:"ChangeAI",Tick:[{Name:"Function",Tags:[Skylands,Neutrality,Blow,Emon,ParticleAndSound]},{Name:"Damage",Player:{DamageType:[Global],DeathCause:'[{"translate":"「ん？何か斬ってしまったかぞい？」%1$sは%2$sの剣舞に巻き込まれ細切れにされた。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'},Distance:{Min:0.5d,Max:3d}},{Name:"Damage",Mob:{Hit:true,Physical:100,Light:100},Distance:{Min:0.5d,Max:3d}},{Settings:[{Name:"Facing",Target:{Look:"All",Radius:12,IgnoreBlocks:true}}],Condition:[{Name:"RandomChance",Chance:0.20d}],Name:"Step",Speed:5.0d}]},{Name:"Blink",Count:1,Chance:1d}],MP:3},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Name:"ChangeAI",Tick:[{}]},{Condition:[{Name:"RandomChance",Chance:0.15d}],Name:"ChangeTurn",Set:1}]}],Exit:{Loop:{Max:10,Current:10}}}],ProjectileDamage:{Physical:50,Light:50,Dark:50}}
