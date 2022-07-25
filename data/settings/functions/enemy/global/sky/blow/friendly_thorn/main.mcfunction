### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",Team:"Friendly",CustomName:'{"translate":"トゲフレンド","color":"#FFFF00","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000,Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,TickingRequired,NativeTask,SmartMotion,Bounce,DamageProjectile,FriendlyProjectile]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:0s}],Explosion:{Type:0,Colors:[I;15005951]},CustomModelData:123}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 180
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],DirectionRange:[360f,360f]}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:40d}}],Damage:[{Name:"SmartMotion",Speed:{Add:200d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]}],Block:[{Condition:[{Name:"HasTarget",Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}},{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d}}],Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:3d,SpeedRange:6d}],Name:"Teleport"},{Name:"SmartMotion",Speed:{Add:40d,Limit:150d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]},{Condition:[{Name:"MinMP",Inverse:true,Logic:"OR",MP:1},{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"CheckBlock",Block:[Water,Lava]}],Name:"Kill"}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Enemy",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"Facing",Target:{Look:"Enemy",Radius:32d}},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"SmartMotion",TP:true,Speed:{Add:10d,Limit:150d,Range:25d}},{Name:"SmartMotion",Speed:{Add:-10d,Limit:40d}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Enemy",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d}],Name:"Teleport"}]}]}],ProjectileDamage:{Physical:250}}
