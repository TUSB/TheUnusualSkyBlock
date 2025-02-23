### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:wither_skeleton",Tags:[Mob,Enemy,DelayedData,HasAI,CallOnTimeOut,CallOnDamage,TickingRequired,HasLootTable,AnalyseLog,"Unknown","Unmoved"],CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"執行者","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',active_effects:[{id:"minecraft:invisibility",amplifier:127b,duration:-1,show_particles:false}],PortalCooldown:7000}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {HandItems:[{id:"netherite_sword",Count:1b,tag:{CustomModelData:2}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3487029}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:0}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:16777215}}},{id:"warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:8}}],ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],HandDropChances:[-1E40f,-1E40f]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 80d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 16d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value -25
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 888
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 444
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 44
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 44
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 44
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 44
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier5/common",Count:1,Chance:1d},{Item:{id:"minecraft:nether_star"},Count:8,Chance:0.3d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$s長いことずりずりと引きずってるから剣に歯こぼれないか心配してる。","with":[{"translate":"【能力：不明】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Time:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d,IgnoreBlocks:true}}],Name:"Function",Tags:[Global,Event,Function,CommonExe,ExtendExistingTime]}],Damage:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}}],Execute:"Random",Name:"Step",Direction:[-30f,-3f],Speed:1.3d,SpeedRange:1.9d},{Name:"Step",Direction:[30f,-3f],Speed:1.3d,SpeedRange:1.9d}],TurnCount:4,Turn:[{Index:1,Skill:[{Interval:{Min:30,Max:60,Current:30},Loop:{Max:1,Current:1},Call:[{Name:"Function",Tags:[Global,Ground,Blow,Executioner,ExecutorsGuide]},{Name:"MergeNBT",NBT:{NoGravity:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Settings:[{Global:1b,Name:"Facing",Target:{Look:"Player",Radius:59}}],Execute:"Random",Name:"Step",Direction:[25f,-5f],Speed:1.6d,Absolute:{Vertical:true}},{Name:"Step",Direction:[-25f,-5f],Speed:1.6d,Absolute:{Vertical:true}}]},{Interval:{Min:2,Max:2,Current:2},Loop:{Max:1,Current:1},Call:[{Name:"MergeNBT",NBT:{NoGravity:false}},{Settings:[{Name:"Direction",Direction:[0f,-90f],Speed:8.5d,DirectionRange:[180.0f,180.0f],Absolute:{Horizontal:true,Vertical:true}}],Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Player",Radius:60},Inverse:true},{Global:1b,Name:"HasTarget",Target:{Look:"Player",Radius:80}}],Name:"Teleport"},{Name:"ChangeTurn",Loop:3}]}],Exit:{Loop:{Max:18,Current:18}}},{Index:2,Target:{Look:"Player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:7,Max:7,Current:7},Loop:{Max:3,Current:3},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}],Execute:"Random",Name:"Step",Direction:[90f,-5f],Speed:1.5d},{Name:"Step",Direction:[-90f,-5f],Speed:1.5d}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:3,Current:3},Call:[{Name:"Step",Direction:[0f,-3f],Speed:3.0d,Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}]}]}],Exit:{Loop:{Max:2,Current:2}}},{Index:3,Target:{Look:"Player",Radius:24d},Rotate:[360f,360f],Skill:[{Interval:{Min:15,Max:15,Current:15},Loop:{Max:1,Current:1},Call:[{Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24}}],Name:"Step",Direction:[0f,-90f],Speed:0.4d,SpeedRange:0.8d}]},{Interval:{Min:20,Max:20,Current:20},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24}}],Name:"Step",Direction:[0f,10f],Speed:2.0d},{Name:"ChangeTurn",Loop:2}]}]},{Index:4,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Player",Radius:10}}],Name:"Message",Message:'{"translate":"執行者からは逃れられない・・・","color":"#8F0000"}'},{Name:"Message",Message:'{"translate":"あなたは恐怖した","color":"#8F0000"}'}]}],Exit:{Loop:{Max:1,Current:1}}}]}
#Function
playsound entity.wither.ambient hostile @a[distance=..32] ~ ~ ~ 0.3 0.5 0
