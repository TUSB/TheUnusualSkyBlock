### 即時ステータス
data modify storage tusb_mob: "即時ステータス"."ベース" set value {id:"minecraft:zombie",CustomName:'{"translate":"パンプキンモータ","color":"#FFFFFF"}',Silent:true,IsBaby:true,FallDistance:-99999f,ActiveEffects:[{Id:2b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:14b,Amplifier:127b,Duration:2147483647,ShowParticles:false},{Id:28b,Amplifier:1b,Duration:2147483647,ShowParticles:false}],PortalCooldown:160,DeathLootTable:"empty",Tags:[Mob,DelayedData,DelayedData,HasAI,CallOnInit,CallOnTimeOut,CooldownRequired]}
data modify storage tusb_mob: "即時ステータス"."見た目" set value {ArmorDropChances:[-1E40f,-1E40f,-1E40f,-1E40f],ArmorItems:[{},{},{},{tag:{Enchantments:[{id:"minecraft:protection",lvl:0s}]},id:"minecraft:pumpkin",Count:1b}]}
data modify storage tusb_mob: "即時ステータス"."最大感知範囲" set value 0d
data modify storage tusb_mob: "即時ステータス"."基本移動力" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック耐性" set value 0d
data modify storage tusb_mob: "即時ステータス"."ノックバック力" set value 0d

### 遅延ステータス
# 属性値
data modify storage tusb_mob: "遅延ステータス"."ステータス"."炎属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."氷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."雷属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."光属性値" set value 100
data modify storage tusb_mob: "遅延ステータス"."ステータス"."闇属性値" set value 100
# ステータス
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大HP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."最大MP" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."物理防御力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法攻撃力" set value 1
data modify storage tusb_mob: "遅延ステータス"."ステータス"."魔法防御力" set value 1
# AI
data modify storage tusb_mob: "遅延ステータス".AI set value {Initial:[{Name:"Step",Direction:[0f,-60f],Speed:1.0d,SpeedRange:2.0d,Target:{Look:"player",Radius:32d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32d}}]}],Time:[{Name:"Spawn",SpawnEntities:[[{Tags:[Global,Event,Summon,Bomb,StardustBombAec],Level:1}]],Target:{Look:"player",Radius:32.0d},Condition:[{Name:"HasTarget",Target:{Look:"player",Radius:32}}]}],Turn:[{Skill:[{Interval:{Min:4,Max:4,Current:30},Loop:{Max:10,Current:10},Call:[{Name:"Step",Direction:[0f,0f],Speed:1.0d,Target:{Look:"player",Radius:64d},Condition:[{Name:"HasTarget",Half:"down",Target:{Look:"player",Radius:64}}]}],Once:{Max:10}}]}]}
#Function
playsound minecraft:entity.firework_rocket.launch master @a[distance=..16] ~ ~ ~ 2 0.7 1
