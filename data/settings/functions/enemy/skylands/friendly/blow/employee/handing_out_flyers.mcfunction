### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:villager",Tags:[LimitedTrades,AnalyseLog,UpdateOffers],CustomName:'{"translate":"《ゲスト》ビラマキ","color":"#00FF00","bold":true}',AbsorptionAmount:9999999f,Invulnerable:true,DeathTime:19s,Silent:true,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false}],NoAI:true,DeathLootTable:"empty",Offers:{Recipes:[{buy:{id:"minecraft:white_wool",Count:1b},sell:{id:"minecraft:carrot_on_a_stick",tag:{CustomModelData:125,CustomAttributes:1b,display:{Name:'{"translate":"TUSB宣伝チラシ","color":"#A4C2F4","bold":true,"italic":false}',Lore:['{"translate":"チラシだ。見覚えのあるキャラクターが","color":"#FFFFFF","italic":false}','{"translate":"何か喋っている(右クリックで詳しく見る)","color":"#FFFFFF","italic":false}','[{"text":"","color":"white","italic":false},{"text":"C","font":"icon","color":"light_purple"},{"text":" TUSB宣伝"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"共通",Name:"TUSB宣伝",Level:1,Interval:60,Trigger:"手に持って右クリック",Count:1}},Count:1b},maxUses:2147483647},{buy:{id:"minecraft:iron_nugget",tag:{CustomModelData:1,display:{Name:'{"translate":"メガトンエメラルド","color":"#FFD966","bold":true,"italic":false}',Lore:['{"translate":"全エリア共通の上位共通通貨","color":"#999999","italic":false}']}},Count:10b},sell:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:19,Wearable:true,display:{Name:'{"translate":"中の人などいない","color":"#B953D4","bold":true,"italic":false}',Lore:['{"translate":"特殊装備枠。","color":"#CCCCCC","italic":false}','{"translate":"右クリックで頭に装備可能。","color":"#CCCCCC","italic":false}','[{"text":"","color":"white","italic":false},{"text":"S","font":"icon","color":"light_purple"},{"text":" ぽむぽむ花火"}]','{"text":"---TUSBMemory---","obfuscated":true,"color":"gray","italic":false}']},Skill:{Type:"TUSBMemory",Initializing:1b,Job:"召喚士",SkillID:638,Name:"ぽむぽむ花火",Level:1,Interval:0,Trigger:"スニークする",Count:64},AttributeModifiers:[{AttributeName:"generic.max_health",Name:"カスタム",Amount:20d,Operation:0,UUID:[I;21,0,0,10],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"カスタム",Amount:-0.2d,Operation:1,UUID:[I;21,0,0,21],Slot:"head"},{AttributeName:"generic.movement_speed",Name:"カスタム",Amount:0.2d,Operation:1,UUID:[I;21,0,0,31],Slot:"head"},{AttributeName:"generic.attack_damage",Name:"カスタム",Amount:18d,Operation:0,UUID:[I;21,0,0,40],Slot:"head"},{AttributeName:"generic.attack_speed",Name:"カスタム",Amount:0.05d,Operation:1,UUID:[I;21,0,0,51],Slot:"head"},{AttributeName:"generic.armor",Name:"カスタム",Amount:0.05d,Operation:1,UUID:[I;21,0,0,61],Slot:"head"}]},Count:1b},maxUses:2147483647}]},VillagerData:{level:99,profession:"nitwit",type:"plains"},DeathLootTableSeed:2147483647L}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{id:"minecraft:stick",Count:1b,tag:{SpawnTags:[Skylands,Friendly,Blow,Employee,HandingOutFlyers]}},{},{},{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:19}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"ビラは小顔美人になるようにフォトショで加工しました！！"}]'
