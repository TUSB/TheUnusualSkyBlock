### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:armor_stand",CustomName:'{"translate":"トゲイガー","color":"#FF0000","bold":true}',NoAI:true,NoGravity:true,Silent:true,Invulnerable:true,ShowArms:false,Invisible:true,NoBasePlate:true,DisabledSlots:4144959,PortalCooldown:2000,Tags:[Mob,DelayedData,HasAI,CallOnInit,CallOnDamage,CooldownRequired,DamageProjectile,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{CustomModelData:123}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 1
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 130
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 10000
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/magic_stone/tier1/mix",Count:1,Chance:1d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Settings:[{Name:"Rotation",Direction:[-180f,-180f],Absolute:{Vertical:true}}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:100d},Gravity:{Set:0d}}],Damage:[{Name:"SmartMotion",OnBlock:"Bounce",Speed:{Add:5d}}],TurnCount:1,Turn:[{Index:1,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"MinMP",Inverse:true,Logic:"OR",MP:1},{Name:"CheckBlock",Block:[Water,Lava]}],Name:"Kill"}]},{Interval:{Min:1,Max:1,Current:1},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Inverse:true,Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Settings:[{Name:"At",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}},{Name:"Direction",Direction:[-180f,-180f],DirectionRange:[360f,360f],Speed:8d,SpeedRange:16d},{Name:"Facing",Target:{Look:"Friendly",Radius:20d}},{Name:"Rotation",Direction:[-5f,-5f],DirectionRange:[10f,10f]}],Name:"SmartMotion",OnBlock:"Bounce",TP:true,Start:true,Speed:{Set:100d,Range:50d}}]}]}]}
