### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[Mob,DelayedData,CallOnInit,CallOnTimeOut,CallOnDamage,TickingRequired,LimitedTrades,HasLootTable,AnalyseLog,WanderingVillager],CustomName:'{"translate":"エニグマ","color":"#00FF00","bold":true}',PortalCooldown:3000,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:gold_nugget",tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}},Count:1b},maxUses:2},{buy:{id:"minecraft:emerald",Count:8b},sell:{id:"minecraft:gold_nugget",tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}},Count:2b},maxUses:4},{buy:{id:"minecraft:emerald",Count:16b},sell:{id:"minecraft:gold_nugget",tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}},Count:4b},maxUses:6},{buy:{id:"minecraft:emerald",Count:32b},sell:{id:"minecraft:gold_nugget",tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}},Count:8b},maxUses:8},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:gold_nugget",tag:{CustomModelData:11,EnchantStone:1b,EnchantID:"謎",Tier:1,display:{Name:'{"translate":"%1$s%2$s(I)","color":"aqua","italic":false,"with":[{"translate":"謎の"},{"translate":"欠片"}]}',Lore:['{"translate":"ランダムエンチャント","color":"gray","italic":false}','[{"translate":"適用可能アイテム： ","color":"green","italic":false},{"translate":"全て","color":"gray"}]','{"translate":"エンチャント台で使用","italic":false}']}},Count:1b},maxUses:16},{buy:{id:"minecraft:emerald",Count:64b},sell:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:1b},sell:{id:"minecraft:emerald",Count:64b},maxUses:2147483647}]},VillagerData:{level:99,profession:"weaponsmith",type:"swamp"},DeathLootTableSeed:3L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Name:"終熄の誘手",Id:[I;1,0,38,0],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGMwOThkZGJjZmUyNGYzNWFiY2Y3NTVkODllY2U4YTk0ZmEwZjMyZmZkODgyODBlMmEyNzE2NTYzYTliOGU3YiJ9fX0="}]}}}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.5d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
### 遅延ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/all/villager",Count:1,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s私、怪しいものではございません。謎の魔石をこっそ～～～り売ります～","with":[{"translate":"【能力：逃走・取引・反撃・コール】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Condition:[{Name:"Function",Inverse:true,Tags:[Global,Event,Function,CommonExe,LevelExpert]}],Name:"Kill"}],Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:8d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Light]},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}},{Name:"MP",MP:99,Percent:true}],Name:"Spawn",Count:1,SpawnEntities:[[{Tags:[Global,Neutrality,Summon,GenocideBomb,Countdown],Level:100}]]},{Name:"Function",Tags:[Global,Event,Function,CommonExe,ReduceExistingTime]}]}
#Function
particle flash ~ ~ ~ 0 0 0 0 10 force