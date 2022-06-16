### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"クリスタル","color":"#FF0000"}',Silent:1b,PortalCooldown:3000,DeathLootTable:"empty",Tags:[Mob,Enemy,DelayedData,HasAI,CooldownRequired,NativeTask,SmartMotion,Bounce]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorItems:[{},{},{},{id:"minecraft:flint",Count:1b,tag:{CustomModelData:1}}],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:2147000000,ShowParticles:0b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 16d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 1d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 80
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 70
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 150
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 150
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {TurnCount:2,Turn:[{Index:1,Target:{Look:"Fixed",Rotation:"LeftUp"},Rotate:[6f,0f],Skill:[{Interval:{Min:8,Max:8,Current:8},Call:[{Settings:[{Name:"Facing",Target:{Look:"Friendly",Radius:32f,IgnoreBlocks:true}},{Name:"Rotation",Direction:[0f,0f],DirectionRange:[25f,25f]}],Name:"SmartMotion",TP:true,Speed:{Set:15d,Range:15d}}]},{Interval:{Min:50,Max:100,Current:75},Call:[{Condition:[{Global:1b,Name:"HasTarget",Target:{Look:"Friendly",Radius:32d,IgnoreBlocks:true}}],Name:"SmartMotion",Speed:{Set:0d}},{Name:"ChangeTurn",Loop:1}]}]},{Index:2,Target:{Look:"Fixed",Rotation:"RightUp"},Rotate:[37f,0f],Skill:[{Interval:{Min:20,Max:20,Current:20},Call:[{}]},{Interval:{Min:3,Max:3,Current:3},Loop:{Max:25,Current:25},Call:[{Settings:[{Name:"Anchor",Anchor:"Eyes"},{Name:"Facing",Target:{Look:"Friendly",Radius:64d,IgnoreBlocks:True}},{Name:"Rotation",Direction:[0f,0f],DirectionRange:[360f,0f]}],Name:"Spawn",SpawnEntities:[[{Tags:[Global,Ground,Shoot,Crystal,RedBullet],Level:1}]]}]}],Exit:{Loop:{Max:2,Current:2}}}]}
