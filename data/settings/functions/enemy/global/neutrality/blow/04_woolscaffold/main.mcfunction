### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:sheep",CustomName:'{"translate":"jeb_","color":"#FFFFFF","bold":true}',Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CallOnDamage,CallOnBlock,CallOnTick,TickingRequired,SmartMotion,Bounce,HasLootTable,AnalyseLog,HideLevel],ActiveEffects:[{Id:8,Amplifier:9b,Duration:9999,ShowParticles:false},{Id:28b,Amplifier:100b,Duration:9999,ShowParticles:false}],PortalCooldown:600,DeathLootTable:"empty"}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:thorns",lvl:30s}]}},{}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 200
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 500
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 2
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Item:{id:"minecraft:white_wool"},Count:64,Chance:1d},{Loot:"item:group/drop_item/tier6/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"♪【脱走のテーマ　作曲：幻の羊毛】今すぐやるぞ！ 脱走脱走！ やるぞ！(いつやるのー?) 今！！ にくいぜ！！あの柵！今日こそ出てやる！(実家に帰らせていただきます～) 今だ！ ワープしろ！(無茶言うな！！←できてるじゃねーか！)  闇はやめろ！(弱点)  闇はやめろ！(弱点) 逃げるに限るぜ！策の外！！♪"}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:10d},Gravity:{Set:0d}}],Time:[{Name:"Message",Message:'{"translate":"幻の羊毛：あばよ～！じゃあなー！","color":"#D45B33"}'}],Damage:[{Element:[Dark],Name:"Damage",Mob:{Hit:true,Physical:999},Distance:{Max:0.5d}}],Block:[{Name:"SmartMotion",TP:true,Speed:{Add:15d,Limit:200d}},{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"RandomChance",Chance:0.15d},{Name:"MP",MP:15}],Settings:[{Name:"At",Target:{Look:"Self"}},{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]},{Name:"Direction",Speed:4d,SpeedRange:16d}],Name:"Teleport"}],Tick:[{Settings:[{Name:"Anchor",Anchor:"Eyes"}],Name:"Function",Tags:[Global,Event,Function,CommonParticle,CloudLine2]}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:10,Current:10},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d}},{Name:"Rotation",Direction:[-20f,-20f],DirectionRange:[40f,40f]}],Name:"SmartMotion",TP:true,Speed:{Add:10d,Limit:150d,Range:25d}},{Name:"SmartMotion",Speed:{Add:-10d,Limit:40d}},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:80d,IgnoreBlocks:true}}],Name:"Kill"}]}]}]}
