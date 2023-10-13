### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:skeleton",CustomName:'{"translate":"クッキー・ガベージャ","color":"#FFFFFF","bold":true}',Silent:true,ActiveEffects:[{Id:14,Amplifier:127b,Duration:-1,ShowParticles:false}],PortalCooldown:3000,Tags:[Mob,Enemy,DelayedData,HasAI,CallOnDamage,TickingRequired,HasLootTable]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:firework_star",Count:1b,tag:{Explosion:{Type:0b,Colors:[I;16763305]},CustomModelData:1004}}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 32d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0.1d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 200
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 0
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value -100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1000
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス".LootTable set value [{Loot:"item:group/drop_item/tier3/common",Count:1,Chance:0.25d}]
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Damage:[{Name:"Function",Tags:[Global,Event,Function,DamageSound,Metal]}],TurnCount:3,Turn:[{Index:1,Skill:[{Interval:{Min:10,Max:30,Current:20},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:24d}}],Name:"ChangeTurn",Set:2}]}]},{Index:2,Skill:[{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",NBT:{OnGround:true}},{Name:"MP",MP:1},{Name:"HasTarget",Target:{Look:"Player",Radius:24d}},{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:16d}}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:24d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-10f,-60f],DirectionRange:[20f,10f]}],Name:"Step",Speed:1.4d}]},{Interval:{Min:25,Max:25,Current:25},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:16d}},{Name:"HasTarget",Inverse:true,Target:{Look:"Player",Radius:12d}}],Name:"ChangeTurn",Set:3}]},{Interval:{Min:5,Max:5,Current:5},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"CheckNBT",NBT:{OnGround:true}},{Name:"MP",MP:1}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:12d,IgnoreBlocks:true},Anchor:"Eyes"},{Name:"Rotation",Direction:[-10f,50f],DirectionRange:[20f,10f]}],Name:"Step",Speed:-1.4d}]}]},{Index:3,Skill:[{Interval:{Min:8,Max:8,Current:8},Loop:{Max:1,Current:2,Range:2},Call:[{Condition:[{Name:"MP",MP:2},{Name:"HasTarget",Target:{Look:"Player",Radius:20d}}],Settings:[{Name:"Facing",Target:{Look:"Player",Radius:32d,IgnoreBlocks:true}},{Name:"Anchor",Anchor:"Eyes"},{Name:"Direction",Speed:1d},{Name:"Rotation",Direction:[-4f,-4f],DirectionRange:[8f,8f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,BananaGarbager,BananaBullet],Level:1}]]},{Condition:[{Name:"MinMP",MP:5}],Name:"Function",Tags:[Global,Event,Function,AttackSound,ThrownBeing]}]},{Interval:{Min:12,Max:12,Current:12},Loop:{Max:1,Current:1},Call:[{Condition:[{Name:"HasTarget",Target:{Look:"Player",Radius:12d}}],Name:"ChangeTurn",Set:2}]}],Exit:{Loop:{Max:6,Current:6}}}]}
