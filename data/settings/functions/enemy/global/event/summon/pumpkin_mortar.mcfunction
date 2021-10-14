### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",Tags:[Mob,HasAI,CallOnDeath,CallOnInit],CustomName:'{"translate":"パンプキンモータ","color":"#FFFFFF"}',Silent:true,IsBaby:true,PortalCooldown:100,ActiveEffects:[{Id:14b,Amplifier:127b,Duration:2000000,ShowParticles:false},{Id:25b,Amplifier:100b,Duration:4,ShowParticles:false}]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{tag:{Enchantments:[{id:"minecraft:protection",lvl:0s}]},id:"minecraft:pumpkin",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."闇属性値" set value 100
# 基礎ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."基礎ポイント" set value 5
data modify storage tusb_mob: "遅延ステータス"."最大MP"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."基礎ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."基礎ポイント" set value 1
# 成長ポイント
data modify storage tusb_mob: "遅延ステータス"."最大HP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."最大MP"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."物理防御力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法攻撃力"."成長ポイント" set value 1
data modify storage tusb_mob: "遅延ステータス"."魔法防御力"."成長ポイント" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-75f],Speed:2.5d,SpeedRange:4.5d,Target:{Look:"player",Radius:32d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32d}}]}],Death:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,StardustBombAec],Level:1}]],Target:{Look:"player",Radius:32.0d}}],Turn:[{Skill:[{Interval:{Min:2,Max:2,Current:20},Loop:{Max:20,Current:20},Call:[{Name:"Step",Direction:[0f,0f],Speed:0.5d,Absolute:{Horizontal:true,Vertical:true},Target:{Look:"player",Radius:32d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32d}}]}],Once:{Max:20}}]}]}
#演出
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 2 0.7 1
