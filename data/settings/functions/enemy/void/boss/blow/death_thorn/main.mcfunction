### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'[{"translate":"t","color":"#440066","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"トゲデスデス","color":"#AA00FF","bold":true,"obfuscated":false},{"translate":"b","color":"#8300C4","obfuscated":true},{"translate":"s","color":"#68009C","obfuscated":true},{"translate":"u","color":"#53007D","obfuscated":true},{"translate":"t","color":"#440066","obfuscated":true}]',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:7000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0,Colors:[I;16711808]},CustomModelData:123}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 10
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 10
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value -20
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 0
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/currency_and_magic_stone/tier6/mix",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:120d}}],Damage:[{Name:"SmartMotion",Speed:{Add:600d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]}],Block:[{Name:"SmartMotion",Speed:{Add:40d,Limit:450d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]},{Condition:[{Name:"MinMP",Inverse:true,Logic:"OR",MP:1},{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:3,Max:3,Current:3},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d}},{Name:"Rotation",Direction:[-20f,-20f],DirectionRange:[40f,40f]}],Name:"SmartMotion",TP:true,Speed:{Add:30d,Limit:450d,Range:75d}},{Name:"SmartMotion",Speed:{Add:-30d,Limit:120d}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}]}]}],ProjectileDamage:{Physical:540}}
