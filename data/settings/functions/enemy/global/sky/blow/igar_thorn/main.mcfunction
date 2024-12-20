### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"トゲイガー","color":"#FF0000","bold":true}',Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnInit,CallOnDamage,CallOnBlock,TickingRequired,SmartMotion,Bounce,DamageProjectile,EnemyProjectile,FriendlyProjectile,HasLootTable,AnalyseLog]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16777215]},CustomModelData:123}}]}
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
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 300
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier2/common",Count:1,Chance:1d}]
data modify storage tusb_mob: "遅延ステータス"."ステータス".DeathCause set value '[{"translate":"%1$sは%2$sによって調理前のハンバーグになった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'
data modify storage tusb_mob: "遅延ステータス"."ステータス".AnalyseLog set value '[{"translate":"%1$sトゲトゲのイガイガ。敵味方区別なく突き刺さる。当たるととても痛いので注意。","with":[{"translate":"【能力：ワープ・格闘・移動・物理無効】","color":"#00FF00"}]}]'
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true}}],Name:"SmartMotion",TP:true,Start:true,Speed:{Set:40d}}],Damage:[{Name:"SmartMotion",Speed:{Add:200d}},{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]}],Block:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Machine]},{Condition:[{Name:"MinMP",Inverse:true,Logic:"OR",MP:1},{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"CheckBlock",Block:[Water,Lava]}],Name:"Kill"},{Condition:[{Name:"RandomChance",Chance:0.1d},{Name:"HasTarget",Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}},{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:16d}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:3d,SpeedRange:6d}],Name:"Teleport"},{Name:"SmartMotion",Speed:{Add:40d,Limit:150d}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:6,Max:6,Current:6},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:28d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:8d,SpeedRange:16d}],Name:"Teleport"},{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:16d,IgnoreBlocks:true}}],Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32d}},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"SmartMotion",TP:true,Speed:{Add:10d,Limit:150d,Range:25d}},{Name:"SmartMotion",Speed:{Add:-10d,Limit:40d}},{Condition:[{Name:"CheckBlock",Inverse:true,Block:[Air]}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-90f],DirectionRange:[360f,180f],Absolute:{Horizontal:true,Vertical:true},Speed:8d,SpeedRange:16d}],Name:"Teleport"}]}]}],ProjectileDamage:{Physical:250}}
